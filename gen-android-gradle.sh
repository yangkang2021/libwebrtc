#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools_unix:$PATH"

cd src

build/android/gradle/generate_gradle.py \
-v \
--sdk-path third_party/android_sdk/public \
--output-directory ../output/out_android_release_armv7 \
--target "//examples:AppRTCMobile" --use-gradle-process-resources \
--split-projects --canary

#cd ..
