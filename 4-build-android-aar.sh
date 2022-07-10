#!/usr/bin/env bash


base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

cd $base_dir/src

chmod 777 ./tools_webrtc/android/release_aar.py


./tools_webrtc/android/release_aar.py \
--skip-tests \
--build-dir=$base_dir/output \
--verbose

cd $base_dir
