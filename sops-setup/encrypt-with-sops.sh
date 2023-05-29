#!/bin/bash

set -eu

FULL_FILEPATH="$1"
DIRECTORY_PATH=$(dirname "$FULL_FILEPATH")
FILENAME=$(basename -- "$FULL_FILEPATH")
EXTENSION="${FILENAME##*.}"
NAME_PART="${FILENAME%.*}"

#extension="${filename##*.}"
#filename="${filename%.*}"
#sops --encrypt --age $(cat ~/.sops/key.txt |grep -oP "public key: \K(.*)") $2 $3 $1 > "$filename.enc.$extension"

echo "FULL_FILEPATH =  ${FULL_FILEPATH}"
echo "FILENAME = ${FILENAME}"
echo "EXTENSION = ${EXTENSION}"
echo "NAME_PART = ${NAME_PART}"
echo "DIRECTORY_PATH = ${DIRECTORY_PATH}"

ENCRYPTED_FILE="${DIRECTORY_PATH}/${NAME_PART}.enc.${EXTENSION}"

sops --encrypt --age $(cat ~/.sops/key.txt |grep -oP "public key: \K(.*)") $FULL_FILEPATH > $ENCRYPTED_FILE

echo "SOPS encrypted file ${FULL_FILEPATH} successfully to ${ENCRYPTED_FILE}"
