#!/bin/bash
cp sample.env.original ../sample.env
./encrypt-with-sops.sh ../sample.env "MYSQL_ROOT_PASSWORD|MYSQL_PASSWORD|MYSQL_TCP_PORT"
echo "run \"sops sample.enc.env\" to view and edit an unencrypted version of the"
echo "file and to re-encrypt any changes automatically"
echo ""
echo "to encrypt new keys first decrypt the encrypted file with "
echo " \"sops -d sample.enc.env > sample.env"