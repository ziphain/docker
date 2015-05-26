#This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com

RUN apt-get update -qq
RUN apt-get install -y apache2 openssh-server curl apt-transport-https \
	ca-certificates \
	lxc \
	iptables

# install Docker
RUN curl -sSL https://get.docker.com/ubuntu/ | sh

ADD ./dind/wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker


VOLUME /var/lib/docker
CMD ["wrapdocker"]


