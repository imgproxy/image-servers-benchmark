import { check } from 'k6';
import http from 'k6/http';
import { SharedArray } from 'k6/data';
import exec from 'k6/execution';

const scenario = {
  tool: __ENV.TOOL || 'imgproxy',
  format: __ENV.FORMAT || 'jpg',
  width: __ENV.WIDTH || 512,
  height: __ENV.HEIGHT || 512,
  quality: 80,
};

switch (scenario.format) {
  case 'jpg':
  case 'jpeg':
    scenario.format = 'jpg';
    break;

  case 'png':
    // Nothing to change here
    break;

  case 'webp':
    scenario.quality = 75;
    break;

  case 'avif':
    scenario.quality = 65;
    break;

  default:
    throw `Unknown format ${scenario.format}`;
}

const getFilesList = (format) => {
  const datasetDir = (__ENV.DATASET_DIR || './dataset');
  const files = open(datasetDir+"/list.txt").split(/\r?\n/);
  return files.filter(filename => getFormat(filename) == format);
}

const getFormat = (filename) => {
  const extStart = filename.lastIndexOf(".");
  const ext = extStart > 0 ? filename.slice(extStart+1) : "";
  return ext == "jpeg" ? "jpg" : ext;
};

const formatUrl = (format, quality, filename) => {
  switch (scenario.tool) {
    case 'imgproxy':
      return `http://${scenario.tool}/unsafe/rs:fit:${scenario.width}:${scenario.height}/f:${format}/q:${quality}/plain/http://nginx/${filename}`;

    case 'thumbor':
    case 'imagor':
      return `http://${scenario.tool}/unsafe/fit-in/${scenario.width}x${scenario.height}/filters:format(${format}):quality(${quality})/http://nginx/${filename}`;

    default:
      throw `Unknown tool ${tool}`;
  }
}

const urls = new SharedArray('urls', () => (
  getFilesList(scenario.format)
    .map(filename => formatUrl(scenario.format, scenario.quality, filename))
));

export const options = {
  discardResponseBodies: true,
  noConnectionReuse: false,

  vus: 2,
};

export default () => {
  if (urls.length == 0) {
    throw 'URLs list is empty';
  }

  const url = urls[exec.scenario.iterationInTest % urls.length]
  const res = http.get(url);
  check(res, { 'is status 200': (r) => r.status === 200});
};
