#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

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

sed -i "" 's/path\ \=\ ..\/..\/..\/..\/..\/..\/../path\ \=\ ..\/..\/..\/src/g' output/ios_framework_debug/arm64_libs/products.xcodeproj/project.pbxproj || echo 'sed project.pbxpro error!!!'




echo "copy WebRTC.framework"
rm -rf sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/WebRTC.framework
cp -rf  output/ios_framework_debug/WebRTC.framework sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/
ls -l sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/WebRTC.framework

echo "copy SmsSignling.framework"
rm -rf sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework
cp -rf  output/ios_framework_debug/arm64_libs/SmsSignling.framework sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/
ls -l sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework



#替换bundle id
sed -i "" 's/google/moming/g' src/examples/objcnativeapi/Info.plist
sed -i "" 's/google/moming/g' src/examples/objc/AppRTCMobile/ios/Info.plist
