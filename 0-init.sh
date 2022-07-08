#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)
export PATH="$base_dir/depot_tools:$PATH"

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

#检查克隆depot_tools
if [ ! -d "$base_dir/depot_tools" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git depot_tools
else
  echo "depot_tools exist,do nothing"
fi

#检查和初始化.gclient
if [ ! -f "$base_dir/.gclient" ]; then
  gclient config https://chromium.googlesource.com/external/webrtc.git --name=src
  #echo "target_os = ['android', 'unix','win','mac','ios']" >> .gclient
else
  echo ".gclient exist, do nothing"
fi
