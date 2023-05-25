#!/bin/bash

set -eu

#volume_name='db-data-volume'
#device='G:\dev\java-projects\test-db-data-3'
volume_name=$1
device=$2

docker volume create --driver local --opt type=none --opt device=$device --opt o=bind $volume_name

echo "Volume named '${volume_name}' mapped to path '${device} created successfully"

exit 0