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

# env vars required for json template
REGISTER_IP=$(hostname -i)
REGISTER_HOSTNAME=$(hostname)

# replace variables in json template
JSON_TEMPLATE=/registration.json.JSON_TEMPLATE
JSON_FILE=/registration.json
cat ${JSON_TEMPLATE} | envsubst > ${JSON_FILE}

# call python client to register
# write config file for python cli
echo "URI=${URI}" > /rest_client.config
/python-rest-clients/cli/cli.py  -d true -c /rest_client.config  -x helpers/service_discovery_helper.ServiceDiscoveryClient.register

log "$0 DONE"


