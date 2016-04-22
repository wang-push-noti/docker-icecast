FROM ubuntu:trusty

MAINTAINER Alastair Montgomery "alastair@montgomery.me.uk"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update && \
    apt-get -qq -y install icecast2 mpc mpd && \
    apt-get clean

CMD ["/start.sh"]
EXPOSE 8000
VOLUME ["/config", "/var/log/icecast2", "/etc/icecast2","/var/lib/mpd/music","/var/lib/mpd/playlists"]

ADD ./mpd.conf /etc/mpd.conf
ADD ./start.sh /start.sh
ADD ./icecast.xml /etc/icecast/icecast.xml
ADD ./icecast2 /etc/default/icecast2
RUN chown -R icecast2 /etc/icecast2
