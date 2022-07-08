#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

#cd src

ninja -j4 -C src/out_mac_release webrtc  WebRTC.framework # all

#cd ..
