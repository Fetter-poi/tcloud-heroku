#!/bin/bash

echo "===== Download Tcloud App ====="
URL=$(curl -s https://github.com/Lunik/tcloud/releases/download/v0.7.11/tcloud-v0.7.11.tgz | grep browser_download_url | cut -d '"' -f 4)
wget $URL -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir tcloud
tar zxf tcloud.tgz -C tcloud --strip-components 1

echo "===== Install dependencies ====="
cd tcloud
npm install --only=prod
