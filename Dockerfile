# This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com
 
# RUN apt-get install -y apache2 openssh-server
RUN /etc/init.d/apache2 start
RUN apt-get install vim -y
CMD /bin/bash
