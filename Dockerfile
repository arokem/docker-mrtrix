# arokem/mrtrix
FROM ubuntu:14.04
MAINTAINER Ariel Rokem <arokem@gmail.com>
RUN apt-get update && apt-get install -y \
build-essential \
mesa-common-dev \
libglu1-mesa-dev \
g++ \
python \
libgtk2.0-dev \
libglib2.0-dev \
libglibmm-2.4-dev \
libgtkmm-2.4-dev \
libgtkglext1-dev \
libgsl0-dev \
libgl1-mesa-dev \
qt5-default \
libqt5svg5* \
git
RUN git clone https://github.com/jdtournier/mrtrix3.git
RUN cd mrtrix3 && ./configure
RUN cd mrtrix3 && ./build
RUN export PATH=/mrtrix3/bin:$PATH
