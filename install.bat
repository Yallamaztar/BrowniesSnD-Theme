@echo off
setlocal

echo Copying .iwi images to %LOCALAPPDATA%\Plutonium\storage\t6\images

if not exist "%LOCALAPPDATA%\Plutonium\storage\t6\images" (
    echo creating images folder since it doesnt exist
    mkdir "%LOCALAPPDATA%\Plutonium\storage\t6\images"
)

xcopy /Y /I "%~dp0images\*.iwi" "%LOCALAPPDATA%\Plutonium\storage\t6\images\"

echo Copying .lua files to %LOCALAPPDATA%\Plutonium\storage\t6\raw

robocopy "%~dp0raw" "%LOCALAPPDATA%\Plutonium\storage\t6\raw" /E /COPY:DAT /R:3 /W:2

echo Done copying files you can now press any key to close me
pause