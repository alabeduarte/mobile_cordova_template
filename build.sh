#!/usr/bin/env bash

cd mobile/www && grunt && cd - 
cd mobile && cordova ripple android && cd -
