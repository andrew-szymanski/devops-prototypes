FROM ubuntu:16.04

MAINTAINER me

ENV SLEEP_TIME=5

RUN apt-get update && apt-get install -y curl && apt-get install -y mysql-client-5.7

ADD loop.sh /

CMD ["/loop.sh"]




