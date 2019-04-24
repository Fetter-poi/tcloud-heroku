#!/bin/bash

echo "===== Download Tcloud App ====="
URL=$(curl -s https://github.com/Fetter-poi/tcloud-heroku/raw/master/tcloud.tgz | grep browser_download_url | cut -d '"' -f 4)
wget $URL -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir tcloud
tar zxf tcloud.tgz -C tcloud --strip-components 1

echo "===== Install dependencies ====="
cd tcloud
npm install --only=prod
