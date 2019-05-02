#!/bin/sh
set -e

echo $PWD
cd ./mobile
echo $PWD
mkdir client
ls
npm install -g swagger-nodegen-cli
swagger-nodegen-cli generate -i ../api/rosa-api.yaml -l javascript -o client/. --additional-properties usePromises=true,useES6=true
