#!/usr/bin/env bash


base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

cd $base_dir/src

chmod 777 ./tools_webrtc/android/build_aar.py


vpython3 ./tools_webrtc/android/build_aar.py \
--build-dir=$base_dir/output \
--arch armeabi-v7a arm64-v8a \
--verbose \
--extra-ninja-switches='webrtc' \
--extra-gn-args='is_debug=false is_component_build=false is_clang=true rtc_include_tests=false rtc_use_h264=true rtc_enable_protobuf=false use_rtti=true use_custom_libcxx=false'


cd $base_dir
