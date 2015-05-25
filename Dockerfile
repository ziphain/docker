# This dockerfile uses the ubuntu image to construct apache2 http server
FROM ubuntu:14.04
MAINTAINER ziphain ziphain@gmail.com

#RUN sudo apt-get update
#RUN apt-get install -y docker.io
#RUN ln -sf /usr/bin/docker.io /usr/local/bin/docker
#RUN sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
curl -sSL https://get.docker.com/ubuntu/ | sh

RUN apt-get install -y apache2 openssh-server
RUN /etc/init.d/apache2 start

CMD /bin/bash
