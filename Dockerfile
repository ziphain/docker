# This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com

RUN apt-get install apt-transport-https
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
RUN bash -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
RUN apt-get update
RUN apt-get install -y lxc-docker



RUN apt-get install -y apache2 openssh-server
RUN /etc/init.d/apache2 start

CMD /bin/bash
