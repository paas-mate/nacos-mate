#!/bin/bash

if ! [ -z "${NACOS_TOKEN_SECRET_KEY}" ]; then
    sed -i "s/nacos.core.auth.plugin.nacos.token.secret.key=/nacos.core.auth.plugin.nacos.token.secret.key=${NACOS_TOKEN_SECRET_KEY}" ${NACOS_HOME}/conf/application.properties
fi

# start mode: standalone or cluster
bash "${NACOS_HOME}"/bin/startup.sh -m "${START_MODE:-standalone}"
