#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

cd src
./tools_webrtc/ios/build_ios_libs.py \
--arch arm64 \
--verbose \
--extra-gn-args 'treat_warnings_as_errors=false  rtc_use_h264=false'


#--output-dir $base_dir/output/ios_framework \
#sed -i "" 's/path\ \=\ ..\/..\/..\/..\/..\/..\/../path\ \=\ ..\/..\/..\/src/g' output/ios_framework/device/arm64_libs/all.xcodeproj/project.pbxproj || echo 'sed project.pbxpro error!!!'

#open output/ios_framework/device/arm64_libs/all.xcodeproj

exit 0;

cd ..

echo "copy WebRTC.framework"
rm -rf sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/WebRTC.framework
cp -rf  output/ios_framework/WebRTC.framework sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/
ls -l sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/WebRTC.framework


echo "copy SmsSignling.framework"

rm -rf sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework
cp -rf  output/ios_framework/arm64_libs/SmsSignling.framework sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/

echo "lipo merge SmsSignling.framework/SmsSignling"
lipo -create output/ios_framework/arm64_libs/SmsSignling.framework/SmsSignling \
output/ios_framework/arm_libs/SmsSignling.framework/SmsSignling \
-output sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework/SmsSignling

echo "show info"
lipo -info sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework/SmsSignling

ls -l sms/sms_client_sdk/ios/sms_client_ios_demo/sms_client_ios_demo/libs/SmsSignling.framework

