#!/usr/bin/env bash


base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

ninja -C output/out_linux_release webrtc
