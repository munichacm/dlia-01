@echo on
set LOCAL_DIR=%~dp0
set LOCAL_DIR=%LOCAL_DIR:~0,-1%
if "%~1"=="" (set "SOURCE=..\..\img") else (set "SOURCE=%~1")

echo Optimizing PNG with pngquant
forfiles /p %SOURCE% /s /m "*.png" /c "cmd /c  echo processing @path && %LOCAL_DIR%\pngquant.exe --skip-if-larger --force --ext .png @path"

pause