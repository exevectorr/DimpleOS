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
echo system not found
echo ==============================
echo 1. download system
echo 2. create custom dimple system
set /p input=
if /i "%input%"=="1" goto create1
if /i "%input%"=="1" goto custom1
goto end

:noexistOS
cls
color 7
echo ==============================
echo your dimple OS system is corrupted
echo ==============================
echo 1. use auto recovery tool
echo 2. create custom dimple system
set /p input=
if /i "%input%"=="1" goto create2
if /i "%input%"=="2" goto custom1
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
echo [d] boot from custom system
echo =========================
echo [b] re-download iso file
echo [c] create custom dimple system
set /p input=
if /i "%input%"=="a" goto modeD
if /i "%input%"=="b" goto create1
if /i "%input%"=="c" goto custom1

:custom1
cls
echo                         dimpleTool Cutsomcrea
echo             ===============================================
echo 1. use built in custom systems
echo 2. create custom system
echo 3. back
set /p input=
if /i "%input%"=="1" goto custom2
if /i "%input%"=="2" goto nonworking
if /i "%input%"=="3" goto u
goto custom1

:nonworking
cls
echo sorry this feture has not released yet.
echo expect it in another uppdate :)
pause
goto u

:custom2
cls
echo                              dimple systems
echo                      ==================================
echo 1. anm1 system (dll)
echo 2. anm2 system (dll)
echo 3. anm4 system crea (iso)
echo 4. creasystem2 (iso)
echo ========================
echo 5. back
set /p input=
if /i %input%==1 goto anm1
if /i %input%==2 goto anm2
if /i %input%==3 goto anm3
if /i %input%==4 goto anm4
if /i %input%==5 goto u
goto custom2

:anm1
cls
cd DimpleOS
type nul > anm1-Z-systemmodifyer.dll
echo system created!
pause
goto modeD

:anm2
cls
cd DimpleOS
type nul > anm2-Z-systemMD.dll
echo system created!
pause
goto modeD

:anm3
cls
cd DimpleOS
type nul > amplSYS.iso
echo system created!
pause
goto modeD

:anm4
cls
cd DimpleOS
type nul > anmESXP.iso
echo system created!
pause
goto modeD



