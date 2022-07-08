@echo off
set PATH=%~dp0depot_tools;%PATH%


if exist depot_tools (
    echo "depot_tools exist, not clone depot_tools"
) else (
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git depot_tools 
)


if exist .gclient (
    echo ".gclient exist, not config gclient"
) else (
  gclient config https://chromium.googlesource.com/external/webrtc.git --name=src
)

pause "init over"
