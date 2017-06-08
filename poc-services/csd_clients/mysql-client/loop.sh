#!/bin/bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C"
}

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}
 
insert_row() {
    mysql --host=${DATABASE_SERVER} --database=${DATABASE_NAME} --user=${USER_NAME} --password=${PASSWORD} -e "INSERT INTO mytable (sometext) VALUES (\"test\")"
}


# ***************
# *** loop sleeping...
# ***************
log "$0 starting..."


DATABASE_NAME=${DATABASE_NAME:=mydb}
USER_NAME=${USER_NAME=myuser}
PASSWORD=${PASSWORD=mysql}
DATABASE_SERVER=${DATABASE_SERVER=172.20.0.2}   # should not have default, but set for manual testing

SLEEP_TIME=${SLEEP_TIME:=3}
while true; do
    log "going to sleep for [${SLEEP_TIME}] secs"
    sleep ${SLEEP_TIME}
done

log "$0 DONE"