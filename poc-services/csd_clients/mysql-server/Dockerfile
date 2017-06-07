FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_ROOT_PASSWORD=root

RUN apt-get update && apt-get install -y curl

ADD areg.sh /docker-entrypoint-initdb.d
ADD init.sql /docker-entrypoint-initdb.d


EXPOSE 3306
