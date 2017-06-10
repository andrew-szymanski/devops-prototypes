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
JSON_TEMPLATE=/registration.json.template
JSON_FILE=/tmp/registration.json
cat ${JSON_TEMPLATE} | envsubst > ${JSON_FILE}

# call python client to register
# write config file for python cli
PYTHON_CLIENT_CONFIG=/tmp/rest_client.config
echo "URI=${URI}" > ${PYTHON_CLIENT_CONFIG}
/python-rest-clients/cli/cli.py  -d true -c ${PYTHON_CLIENT_CONFIG} -x helpers/service_discovery_helper.ServiceDiscoveryClient.register

log "$0 DONE"


