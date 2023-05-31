#!/bin/bash

echo "key1: Value_One" >  config.yaml
echo "key2: Value_Two" >> config.yaml
echo "key3: Value_Three" >> config.yaml

echo "----------------------------------------------------------------------"
echo "    Test input file, config.yaml, created with the following content"
echo "----------------------------------------------------------------------"
cat config.yaml
echo "======================================================================"

echo ""
echo ""
echo ""
echo ""
echo "----------------------------------------------------------------------"
echo "               Encrypting all keys in config.yaml"
echo "----------------------------------------------------------------------"
echo ""
echo ""
../encrypt-with-sops.sh config.yaml
echo ""
echo ""
cat config.enc.yaml
echo ""
echo ""
echo "======================================================================"

echo ""
echo ""
echo "run \"sops config.enc.yaml\" to view and edit an unencrypted version of the"
echo "file and to re-encrypt any changes automatically"