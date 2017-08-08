FROM productize/docker-arm-embedded:17.04
MAINTAINER Seppe Stas <seppe@productize.be>
LABEL Description="Image for building mbed projects using the gcc-arm-embedded toolchain"

RUN apt-get update -qq && apt-get install -y python2.7 python-pip
RUN pip install mbed-cli && mbed toolchain -G GCC_ARM
