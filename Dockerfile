#This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com

#RUN apt-get update -qq
#RUN apt-get install -y apache2 openssh-server curl apt-transport-https \
#	ca-certificates \
#	lxc \
#	iptables

# install Docker
#RUN curl -sSL https://get.docker.com/ubuntu/ | sh

RUN mkdir test_folder
RUN git clone https://github.com/jpetazzo/dind



