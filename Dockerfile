FROM ubuntu:latest

ARG USER

RUN yes | unminimize

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install man-db
RUN apt-get -y install vim
RUN apt-get -y install git

RUN mkdir -p /home/$USER
RUN useradd -r -d /home/$USER -s /bin/bash -g root -G sudo -u 1001 $USER

USER $USER
WORKDIR /home/$USER
