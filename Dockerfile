FROM ubuntu:14.04.1
MAINTAINER Thomas Steinbach <thomass@aikq.de>
ENV DOCKER_TEMPLATE_VERSION 2015-01-04
RUN apt-get update

VOLUME ["/config"]

ADD assets/start.sh /root/
ADD assets/noip-duc-linux.tar.gz /root/

RUN apt-get install -y make gcc && \
    cd /root/noip-2.1.9-1 && \
    make && \
    mv noip2 /root && \
    cd /root && rm -rf noip-2.1.9-1 && \
    chmod +x start.sh && \
    apt-get purge -y make gcc && \
    apt-get autoremove -y && apt-get autoclean -y

ENTRYPOINT /root/start.sh
