# This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com

RUN apt-get install -y apache2 openssh-server curl
RUN curl -sSL https://get.docker.com/ubuntu/ | sh
RUN /etc/init.d/apache2 start

RUN reboot

CMD /bin/bash
