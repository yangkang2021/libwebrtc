set PATH=%~dp0depot_tools;%PATH%

cd src

set DEPOT_TOOLS_WIN_TOOLCHAIN=0

set GYP_MSVS_VERSION=2019
set GYP_MSVS_OVERRIDE_PATH="C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise"
set GYP_MSVS_OVERRIDE_PATH=%GYP_MSVS_OVERRIDE_PATH:"=%

::打印出gn的参数
::call gn args out_win_debug_vs2019 --list --short --args="rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false" > ../gn_args.log

call gn gen ../output/out_win_release_vs2019 --ide="vs2019"  --winsdk="10.0.19041.0" -sln=webrtc_buka_M94_release  --ninja-extra-args="-j4" --args="is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=false treat_warnings_as_errors=false rtc_include_tests=false gtest_enable_absl_printers=false libyuv_include_tests=false  rtc_enable_protobuf=false use_custom_libcxx=false use_custom_libcxx_for_host=false use_lld=false is_clang=false"

::x86
::call gn gen ../output/out_win_release_vs2019_x86 --ide="vs2019"  --winsdk="10.0.18362.0" -sln=webrtc_buka_M81_4044_x86_release --args="target_cpu=\"x86\" is_debug=false ffmpeg_branding=\"Chrome\"  rtc_use_h264=true treat_warnings_as_errors=false rtc_include_tests=false"

cd ..
pause