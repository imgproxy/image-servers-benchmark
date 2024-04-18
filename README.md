# Image processing servers benchmark

This repository contains the code used to benchmark the performance of different image processing servers. The servers tested are:

* imgproxy
* thumbor
* imagor

> [!NOTE]
> If you aren't interested in running the benchmarks yourself, you can read our [blog article](https://imgproxy.net/blog/image-processing-servers-benchmark/). Also, you can find the raw k6 outputs in the [results](results) directory.

## Running the benchmarks

We strongly recommend running the benchmarks on a separate machine purposed for the benchmarks only. C-type AWS EC2 instances are a good choice for this as they provide dedicated CPU resources.

### Running the benchmarks on AWS EC2

1. Use CloudFormation to create a new stack with the [cloudformation.yml](cloudformation.yml) template. This will create a new EC2 instance and prepare everything for the benchmark.
2. Run the benchmark with the following command:

    ```bash
    ssh ubuntu@<instance-ip> -t "cd ~/benchmark; make bench-<tool> FORMAT=<format>"
    ```

    Replace `<instance-ip>` with the public IP of the EC2 instance (can be found in the CloudFormation stack outputs), `<tool>` with the tool you want to benchmark (`imgproxy`, `thumbor`, or `imagor`), and `<format>` with the image format you want to benchmark (`jpeg`, `png`, `webp`, or `avif`).

    For example, to run the benchmark for imgproxy with JPEG images, you would run:

    ```bash
    ssh ubuntu@<instance-ip> -t "cd ~/benchmark; make bench-imgproxy FORMAT=jpeg"
    ```

### Running the benchmarks locally

1. You should have Docker installed on your machine. Also, to prepare the dataset, you need to have `curl`, `unzip`, and `vips` installed.
2. Clone this repository and `cd` into it.
3. Run the following command to prepare the dataset:

    ```bash
    make prepare-dataset
    ```
4. Run the benchmark with the following command:

    ```bash
    make bench-<tool> FORMAT=<format>
    ```

    Replace `<tool>` with the tool you want to benchmark (`imgproxy`, `thumbor`, or `imagor`), and `<format>` with the image format you want to benchmark (`jpeg`, `png`, `webp`, or `avif`).

    For example, to run the benchmark for imgproxy with JPEG images, you would run:

    ```bash
    make bench-imgproxy FORMAT=jpeg
    ```
