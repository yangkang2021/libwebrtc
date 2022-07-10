#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"


cd src

gn gen out_mac_release --ide="xcode" --xocde-project="web_mac_release" --args="target_os=\"mac\" target_cpu=\"x64\"  is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false rtc_use_x11=false gtest_enable_absl_printers=false libyuv_include_tests=false  rtc_enable_protobuf=false use_custom_libcxx=false use_custom_libcxx_for_host=false use_lld=false is_clang=true rtc_build_examples=true  rtc_enable_symbol_export=false rtc_enable_objc_symbol_export=true"

cd ..
