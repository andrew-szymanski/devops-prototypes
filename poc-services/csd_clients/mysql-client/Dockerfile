FROM ubuntu:16.04

MAINTAINER me

ENV SLEEP_TIME=5

RUN apt-get update && apt-get install -y curl && apt-get install -y mysql-client-5.7 && apt-get install -y git && apt-get install -y python-pip 

RUN git clone https://github.com/andrew-szymanski/python-generic-rest-client.git && cd /python-generic-rest-client && pip install -e .

ADD loop.sh /

CMD ["/loop.sh"]




