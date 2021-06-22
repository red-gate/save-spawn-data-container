#!/bin/bash

set -e

dataContainer=$1

shift 1

if [[ -z "$SPAWNCTL_ACCESS_TOKEN" ]]; then
    echo "SPAWNCTL_ACCESS_TOKEN is not set"
    exit 1
fi

spawnctl save data-container "$dataContainer" $@ -q
dcJson=$(spawnctl get data-container "$dataContainer" -o json)
dcRevision=$(echo "$dcJson" | jq -r '.revision')

echo ::set-output name=newRevision::"$dcRevision"