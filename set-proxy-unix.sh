#!/usr/bin/env bash

#git 代理
git config --global http.proxy 192.168.0.4:8090
git config --global https.proxy  192.168.0.4:8090

#http和https
export http_proxy=192.168.0.4:8090
export https_proxy=192.168.0.4:8090