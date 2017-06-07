#!/bin/bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C"
}

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}


# ***************
# *** loop sleeping...
# ***************
log "$0 starting..."

SLEEP_TIME=${SLEEP_TIME:=3}
while true; do
    log "going to sleep for [${SLEEP_TIME}] secs"
    sleep ${SLEEP_TIME}
done

log "$0 DONE"