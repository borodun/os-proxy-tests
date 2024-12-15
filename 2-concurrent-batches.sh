#!/usr/bin/env bash

source common.sh

pint-info
init

echo -e "\n${Blu}Downloading samples through proxy (parallel connects = ${CONCURRENCY}):${RCol}"
seq ${REQUESTS} | xargs -P ${CONCURRENCY} -I {} bash -c "export output=\$(INTERACTIVE=false make-request {} '${PROXY_CURL_CMD}' 2>&1) && echo \$output"

check-files