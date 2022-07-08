#!/usr/bin/env bash

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

ninja -j4 -C src/out_mac_release webrtc  WebRTC.framework # all

