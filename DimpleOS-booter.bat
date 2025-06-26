@echo off
setlocal

:X
cls
color 7
if exist DimpleOS goto u
goto noexist

:u
cd DimpleOS

if not exist boot_device-dimpeliOS.dll goto noexistOS
if not exist HVDimage.ios goto noexistOS
if not exist Dimple-010001-image-easyBoot.iso noexistOS
if not exist system_setup.dll goto noexistOS
if not exist opperator56.dll goto noexistOS
if not exist opperator65.dll goto noexistOS
if not exist col.sys goto noexistOS
if not exist PV.iso goto noexistOS

goto existOS

:noexist
cls
color 7
echo ==============================
echo system OS iso not found
echo ==============================
echo 1. download iso
set /p input=
if /i "%input%"=="1" goto create1
goto end

:noexistOS
cls
color 7
echo ==============================
echo your dimple OS system is corrupted
echo ==============================
echo 1. use auto recovery tool
set /p input=
if /i "%input%"=="1" goto create2
goto end

:create2
cls
echo Downloading system files...
cd DimpleOS >nul
type nul > boot_device-dimpeliOS.dll
type nul > HVDimage.ios
type nul > Dimple-010001-image-easyBoot.iso
type nul > system_setup.dll
type nul > opperator56.dll
type nul > opperator65.dll
type nul > col.sys
type nul > PV.iso
type nul > SVCsystem-file.exe
type nul > caleventor.exe
type nul > caleventor-system.dll
type nul > caleventor-V.exe
type nul > caleventor-V.dll
timeout /t 3 >nul
echo.
echo The system files have been downloaded!
pause
cd ..
goto modeD

:create1
cls
echo Downloading system files...
if not exist "DimpleOS" mkdir DimpleOS
cd DimpleOS
type nul > boot_device-dimpeliOS.dll
type nul > HVDimage.ios
type nul > Dimple-010001 image-easyBoot.iso
type nul > system_setup.dll
type nul > opperator56.dll
type nul > opperator65.dll
type nul > col.sys
type nul > PV.iso
type nul > SVCsystem-file.exe
type nul > caleventor.exe
type nul > caleventor-system.dll
type nul > caleventor-V.exe
type nul > caleventor-V.dll
timeout /t 3 >nul
echo.
echo the system and iso have been downloaded!
pause
cd ..
goto modeD

:modeD
cd /d "%USERPROFILE%\Desktop"
if exist "dimpleOS1.bat" (
    echo booting from iso. . .
    start "" "dimpleOS1.bat"
) else (
    echo iso file not found
)
goto end

:existOS
cls
echo =========================
echo you already have the dimpleOS system files
echo [a] continue to boot. . .
echo =========================
echo [b] re-download iso file
set /p input=
if /i %input%==a goto modeD
if /i %input%==b goto create1


