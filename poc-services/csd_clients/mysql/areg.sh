#!/bin/bash

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}


# ***************
# *** register service
# ***************
log "$0 starting..."
curl -H "Accept: application/json" -H "Content-type: application/json"  -X POST --data @/tmp/registration.json https://swe1.celarius.com:1443/api/v1/groups

log "$0 DONE"

# {"code": "MYSQL","name": "MySQL","description": "mysql database","meta": ""}

