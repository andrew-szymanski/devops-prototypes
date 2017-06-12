FROM ubuntu:16.04

MAINTAINER me

ENV SLEEP_TIME=5

RUN apt-get update && apt-get install -y curl && apt-get install -y mysql-client && apt-get install -y git &&  apt-get install -y python-dev && apt-get install -y python-pip 

RUN git clone https://github.com/andrew-szymanski/python-rest-clients.git && cd /python-rest-clients && pip install -e .

ADD loop.sh /

CMD ["/loop.sh"]




