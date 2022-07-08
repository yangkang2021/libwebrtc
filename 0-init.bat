@echo off
set PATH=%~dp0depot_tools;%PATH%


::if exist depot_tools (
::    echo "depot_tools exist,do nothing"
::) else (
    git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git depot_tools 
::)


::if exist .gclient (
::    echo ".gclient exist,do nothing"
::) else (
    gclient config https://chromium.googlesource.com/external/webrtc.git
    ::echo "target_os = ['android', 'unix','win','mac','ios']" >> .gclient
::)

pause 
