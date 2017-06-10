#!/bin/bash

log() {
    date "+%m-%d:%H:%M:%S $*" | grep -iv 'passw'
}


# ***************
# *** register service
# ***************
log "$0 starting..."


if [ -z "$URI" ]; then
   log "ERROR: URI env var not specified - run docker with '--env URI=https://hostname:4032/api/vi1' option"
   exit 1
fi



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
curl -H "Accept: application/json" -H "Content-type: application/json"  -X POST --data @${JSON_FILE} https://aaaa.com:1443/api/v1/groups

log "$0 DONE"

# {"code": "MYSQL","name": "MySQL","description": "mysql database","meta": ""}

