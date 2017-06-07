#!/bin/bash

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}


# ***************
# *** loop sleeping...
# ***************

SLEEP_TIME=3
while true; do
    log "going to sleep for [${SLEEP_TIME}] secs"
    sleep ${SLEEP_TIME}
done