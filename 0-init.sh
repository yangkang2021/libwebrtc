#!/usr/bin/env bash

base_dir=$(cd "$(dirname "$0")";pwd)
export PATH="$base_dir/depot_tools:$PATH"

#检查克隆depot_tools
if [ ! -d "$base_dir/depot_tools" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git depot_tools
else
  echo "depot_tools exist, not clone depot_tools"
fi

#检查和初始化.gclient
if [ ! -f "$base_dir/.gclient" ]; then
  gclient config https://chromium.googlesource.com/external/webrtc.git  --name=src
  #echo "target_os = ['android', 'unix','win','mac','ios']" >> .gclient
else
  echo ".gclient exist, not config gclient"
fi
