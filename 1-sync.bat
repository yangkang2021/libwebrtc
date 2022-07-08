@echo off
set /p yn=确定删除修改并同步代码吗?(Y/N):
echo %yn%
if /i "%yn%"=="Y" (
	set yn=""
	goto WORK
) else (
	set yn=""
	goto END
)
:WORK



set PATH=%~dp0depot_tools;%PATH%

:: --with_branch_heads --with_tags

gclient sync --no-history -v --nohooks --force --revision src@6584528aeb0f0e2ab4d14114aefeee7e5997ade9
:END
pause7ade9
:END
pause