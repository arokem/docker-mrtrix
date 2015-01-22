# arokem/mrtrix
FROM ubuntu:14.04
MAINTAINER Ariel Rokem <arokem@gmail.com>
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y mesa-common-dev
RUN apt-get install -y libglu1-mesa-dev
RUN apt-get install -y g++ 
RUN apt-get install -y python
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libglib2.0-dev
RUN apt-get install -y libglibmm-2.4-dev
RUN apt-get install -y libgtkmm-2.4-dev
RUN apt-get install -y libgtkglext1-dev
RUN apt-get install -y libgsl0-dev
RUN apt-get install -y libgl1-mesa-dev 
RUN apt-get install -y qt5-default
RUN apt-get install -y libqt5svg5*
RUN apt-get install -y git
RUN git clone https://github.com/jdtournier/mrtrix3.git
RUN cd mrtrix3 && ./configure
RUN cd mrtrix3 && ./build
#RUN export PATH=/mrtrix3/bin:$PATH
