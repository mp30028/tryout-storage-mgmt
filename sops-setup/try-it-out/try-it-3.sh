#!/bin/bash
cp sample.env.original sample.env
echo "----------------------------------------------------------------------"
echo "      Contents of test input file, sample.env, before encryption"
echo "----------------------------------------------------------------------"
cat sample.env
echo "======================================================================"
echo ""
echo ""
echo ""
echo ""
echo "----------------------------------------------------------------------"
echo "               Encrypting MYSQL_ROOT_PASSWORD and MYSQL_PASSWORD in sample.env"
echo "----------------------------------------------------------------------"
echo ""
echo ""
../encrypt-with-sops.sh sample.env "MYSQL_ROOT_PASSWORD|MYSQL_PASSWORD|MYSQL_TCP_PORT"
echo ""
echo ""
cat sample.env
echo ""
echo ""
echo "======================================================================"

echo ""
echo ""
echo "run \"sops sample.env\" to view and edit an unencrypted version of the"
echo "file and to re-encrypt any changes automatically"
echo ""
echo "to encrypt new keys first decrypt the encrypted file with "
echo " \"sops -d sample.env > decrypted-sample.env"