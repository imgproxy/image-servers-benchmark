FROM python:3-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  git \
  zlib1g-dev \
  libssl-dev \
  libcurl4-openssl-dev \
  libjpeg62-turbo-dev \
  libwebp-dev \
  liblcms2-dev
RUN pip install thumbor pillow-avif-plugin pycurl

CMD [ "thumbor", "-p", "80", "--conf=/thumbor/thumbor.conf" ]
