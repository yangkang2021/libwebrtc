#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="/home/moming/Desktop/webrtc-04-buka/sms/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin:$base_dir/depot_tools:$PATH"


cd src


#打印出gn的参数
#call gn args out_win_debug_vs2019 --list --short --args="rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false" > ../gn_args.log



#gn gen ../output/out_nx_release --args="is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false rtc_use_x11=false target_os=\"linux\" target_cpu=\"arm64\" "

#no effect,because file tree errro
#target_sysroot=\"/home/moming/Desktop/webrtc-04-buka/sms/sysroot-glibc-linaro-2.25-2019.12-aarch64-linux-gnu\"


#gn args ../output/out_nx_release --list --args="rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false" > ../output/out_nx_release/gn_args.log

#is_clang set using clang(true) or linaro(false) 
gn gen ../output/out_nx_release --args="is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=false treat_warnings_as_errors=false rtc_include_tests=false rtc_use_x11=false target_os=\"linux\" target_cpu=\"arm64\" gtest_enable_absl_printers=false libyuv_include_tests=false  rtc_enable_protobuf=false use_custom_libcxx=false use_custom_libcxx_for_host=false use_lld=false is_clang=true rtc_build_libevent=true"

cd ..
