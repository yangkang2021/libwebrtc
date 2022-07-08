#!/usr/bin/env bash


base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

cd src

#is_clang set using clang(true) or linaro(false) 
gn gen ../output/out_nx_release --args="is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=false treat_warnings_as_errors=false rtc_include_tests=false rtc_use_x11=false target_os=\"linux\" target_cpu=\"arm64\" gtest_enable_absl_printers=false libyuv_include_tests=false  rtc_enable_protobuf=false use_custom_libcxx=false use_custom_libcxx_for_host=false use_lld=false is_clang=true rtc_build_libevent=true"

cd ..
