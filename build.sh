#!/usr/bin/env bash

cd mobile/www && npm install && grunt && mocha && cd - 
cd mobile && cordova ripple android && cd -