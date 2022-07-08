#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"


cd src


#打印出gn的参数
#call gn args out_win_debug_vs2019 --list --short --args="rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false" > ../gn_args.log

gn gen ../output/out_linux_release --args="is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false rtc_use_x11=false"
cd ..
