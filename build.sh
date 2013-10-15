#!/usr/bin/env bash

cd mobile/www && grunt && mocha && cd - 
cd mobile && cordova ripple android && cd -