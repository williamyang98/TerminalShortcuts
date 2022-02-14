@echo off

set VS_ROOT=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community
set VS_DIR=%VS_ROOT%\VC\Auxiliary\Build
set VS_DEV=%VS_ROOT%\Common7\Tools\VsDevCmd.bat 

:GETOPTS
if /I "%~1" == ""               goto HELP
if /I "%1" == "vsdev"           call cmd /k "%VS_DEV%" 
if /I "%1" == "varsall"         call cmd /k "%VS_DIR%\vcvarsall.bat"
if /I "%1" == "vars86"          call cmd /k "%VS_DIR%\vcvars86.bat"
if /I "%1" == "vars64"          call cmd /k "%VS_DIR%\vcvars64.bat"
if /I "%1" == "vars86_64"       call cmd /k "%VS_DIR%\vcvarsx86_amd64.bat"
if /I "%1" == "vars64_86"       call cmd /k "%VS_DIR%\vcvarsamd64_x86.bat"
if /I "%1" == "help"            goto HELP
goto EXIT

:HELP
echo Available commands
echo vsdev      - Developer command prompt
echo varsall    - vcvarsall.bat
echo vars86     - vcvars86.bat
echo vars64     - vcvars64.bat
echo vars86_64  - vcvarsx86_64.bat
echo vars64_86  - vcvarsamd64_x65.bat
goto EXIT

:EXIT
