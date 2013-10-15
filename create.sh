#!/bin/sh

npm init

APP="my_app"
COFFEE=$1
LESS=$2

MOBILE_DIR="${APP}/mobile"
WWW_DIR="${MOBILE_DIR}/www"

mkdir $APP
cd $APP
  if [ COFFEE ]; then mkdir "app" && mkdir "app/coffee" && npm install coffee-script --save && npm install grunt-contrib-coffee --save; fi
  if [ LESS ]; then mkdir "app/less" && npm install grunt-contrib-less --save; fi
  cordova create "mobile"
cd -

mv package.json $WWW_DIR
mv -r node_modules/ $WWW_DIR

cd $WWW_DIR
  npm install grunt --save
cd -