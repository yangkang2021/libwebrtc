#!/usr/bin/env bash


base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

#--arch {'arm64','arm'} \

#--output-dir $base_dir/output/ios_framework_debug \

cd src
./tools_webrtc/ios/build_ios_libs.py \
--arch {'arm64',} \
--extra-gn-args 'treat_warnings_as_errors=false rtc_use_h264=true' \
--build_config debug

exit

cd ..


#替换bundle id
sed -i "" 's/google/moming/g' src/examples/objcnativeapi/Info.plist
sed -i "" 's/google/moming/g' src/examples/objc/AppRTCMobile/ios/Info.plist
