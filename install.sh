#!/bin/bash

echo "===== Download Tcloud App ====="
wget "https://github.com/Fetter-poi/tcloud-heroku/raw/master/tcloud.tgz" -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir tcloud
tar zxf tcloud.tgz -C tcloud --strip-components 1

echo "===== Install dependencies ====="
cd tcloud
npm install --only=prod
