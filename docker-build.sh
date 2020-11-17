#!/usr/bin/env bash

set -e

API_SPEC_PATH="${1:-${PWD}/manager.asyncapi.yaml}"
OUTPUT_PATH="${2:-${PWD}/docs}"
TEMPLATE="${3:-${PWD}/template}"

docker run --rm -it \
    -v "${API_SPEC_PATH}:/app/spec.yml" \
    -v "${OUTPUT_PATH}:/app/output" \
    -v "${TEMPLATE}:/app/template" \
    asyncapi/generator --debug \
        -o /app/output /app/spec.yml /app/template \
        --force-write -p sidebarOrganization=byTags
