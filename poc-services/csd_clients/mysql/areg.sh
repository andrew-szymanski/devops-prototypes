#!/bin/bash

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}


# ***************
# *** register service
# ***************
log "$0 starting..."

# mickey mouse - write json to send
JSON_FILE=/tmp/registration.json 
echo '{' > ${JSON_FILE}
echo '"code": "MYSQL",' >> ${JSON_FILE}
echo '"name": "MYSQL",' >> ${JSON_FILE}
echo '"description": "mysql database",' >> ${JSON_FILE}
# meta
IP=$(hostname -i)
printf '"meta": "%s"\n' "${IP}" >> ${JSON_FILE}
echo '}' >> ${JSON_FILE} >> ${JSON_FILE}



log "executing curl, json file:"
log "------ start -------"
cat ${JSON_FILE}
log "------ end -------"
curl -H "Accept: application/json" -H "Content-type: application/json"  -X POST --data @${JSON_FILE} https://swe1.celarius.com:1443/api/v1/groups

log "$0 DONE"

# {"code": "MYSQL","name": "MySQL","description": "mysql database","meta": ""}

