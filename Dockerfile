FROM ubuntu:16.04
MAINTAINER Bogdan Mustiata <bogdan.mustiata@gmail.com>

EXPOSE 8081
ENV VNC_PORT=5901

RUN apt-get update -y && \
    apt-get install -y novnc websockify && \
    useradd -m raptor && \
    cp -R /usr/share/novnc /home/raptor/novnc

ADD bin/index.html /home/raptor/novnc/
ADD bin/novnc.sh /home/raptor/bin/novnc.sh

RUN chown -R raptor:raptor /home/raptor

USER raptor

CMD /home/raptor/bin/novnc.sh

