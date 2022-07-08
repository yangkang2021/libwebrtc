set PATH=%~dp0depot_tools;%PATH%

set DEPOT_TOOLS_WIN_TOOLCHAIN=0

set GYP_MSVS_VERSION=2019
set GYP_MSVS_OVERRIDE_PATH="C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise"
set GYP_MSVS_OVERRIDE_PATH=%GYP_MSVS_OVERRIDE_PATH:"=%

gclient runhooks --force
pause
