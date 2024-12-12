#!/usr/bin/env bash

source common.sh

pint-info
init

echo -e "\n${Blu}Downloading samples through proxy:${RCol}"
for i in `seq ${REQUESTS}`; do
	make-request "${i}" "${PROXY_CURL_CMD}"
done

check-files
