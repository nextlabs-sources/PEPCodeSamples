@ECHO OFF
setlocal EnableDelayedExpansion
set arg1=%1

for %%i in ("%~dp0.") do SET "CURRENT_DIR=%%~fi\..\classes"

for %%j in ("%CURRENT_DIR%\*.class") DO (
  echo Executing Java class: %%~nj
  java -cp "%CURRENT_DIR%;%CURRENT_DIR%\..\xlib\nextlabs-openaz-pep.jar;%CURRENT_DIR%\..\xlib\*;%CURRENT_DIR%\config" "%%~nj" %1
)
