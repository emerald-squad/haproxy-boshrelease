#/bin/sh

PIPELINE_NAME=${1:-haproxy-boshrelease}
ALIAS=${2:-ci}
CREDENTIALS=${3:-my-params.yml}

fly -t "${ALIAS}" sp -n -p "${PIPELINE_NAME}" -c pipeline.yml -l "${CREDENTIALS}"
