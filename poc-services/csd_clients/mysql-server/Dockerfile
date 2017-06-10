FROM mysql

MAINTAINER me

ENV MYSQL_ROOT_PASSWORD=root

RUN apt-get update && apt-get install -y curl && apt-get install -y mysql-client && apt-get install -y git && apt-get install -y python-dev && apt-get install -y python-pip 

RUN git clone https://github.com/andrew-szymanski/python-rest-clients.git && cd /python-rest-clients && pip install -e .

ADD areg.sh /docker-entrypoint-initdb.d
ADD init.sql /docker-entrypoint-initdb.d
ADD registration.json.template /registration.json.template


EXPOSE 3306
