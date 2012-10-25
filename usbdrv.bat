@echo off

if "%1"=="/?" (
  goto USAGE
) else (
goto MAIN
)

:MAIN
for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "%1"') do set usb=%%D
start /b %usb%\%2
GOTO :EOF

:USAGE
echo Launches a portable application from a USB drive
echo.
echo USBDRV "drive_label" app_path
echo.
echo   "drive_label"  specifies the drive label to find
echo   app_path       specifies the path to the app on the USB drive,
echo                  e.g. PortableApps\PortableFirefox\PortableFirefox.exe
echo.
echo To find the drive label of your USB drive, open My Computer, right-click 
echo on the USB drive, and click Properties. The label appears in the text
echo field at the top of the properties window.
echo.
