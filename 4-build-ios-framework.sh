#!/usr/bin/env bash

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

cd src
./tools_webrtc/ios/build_ios_libs.py \
--arch arm64 \
--verbose \
--extra-gn-args 'treat_warnings_as_errors=false  rtc_use_h264=false'

#open output/ios_framework/device/arm64_libs/all.xcodeproj

exit 0;

cd ..


