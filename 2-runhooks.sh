#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

export NO_AUTH_BOTO_CONFIG="$base_dir/.boto"


#git 代理
#git config --global http.proxy 'socks5://192.168.0.4:1080'
#git config --global https.proxy 'socks5://192.168.0.4:1080'
git config --global http.proxy 192.168.0.4:8090
git config --global https.proxy  192.168.0.4:8090

#http和https
#export http_proxy=socks5://192.168.0.4:1080
#export https_proxy=socks5://192.168.0.4:1080
export http_proxy=192.168.0.4:8090
export https_proxy=192.168.0.4:8090

gclient runhooks --force
