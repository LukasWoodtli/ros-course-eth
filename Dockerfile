FROM ubuntu:16.04

# This is work in progress!

MAINTAINER Lukas Woodtli "http://lukaswoodtli.github.io/"

RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main universe restricted multiverse" > /etc/apt/sources.list.d/ros-latest.list && \
	apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

RUN apt-get update && \
	apt-get upgrade && \
	apt-get install -y --force-yes \
	build-essential \
	git \
	tmux \
	vim \
	python-rosinstall \
	python-rosinstall-generator \
	python-wstool \
	ros-kinetic-desktop-full

RUN apt-get install -y --force-yes ros-kinetic-husky-simulator

RUN apt-get clean

#RUN source /opt/ros/kinetic/setup.bash

ENTRYPOINT ["/bin/bash", "-l"]
