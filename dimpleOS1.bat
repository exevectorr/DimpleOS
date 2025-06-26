@echo off
title DimpleOS
setlocal enabledelayedexpansion
setlocal

set amplifier=0..0..1..0

:checker5
cls
if exist dimpleOS goto checker6
if not exist dimpleOS goto screener1

:checker6
cls
cd dimpleOS
if not exist boot_device-dimpeliOS.dll goto screener1
if not exist HVDimage.ios goto screener1
if not exist Dimple-010001-image-easyBoot.iso screener1
if not exist system_setup.dll goto screener1
if not exist opperator56.dll goto screener1
if not exist opperator65.dll goto screener1
if not exist col.sys goto screener1
if not exist PV.iso goto screener1

goto V

:V
cls
echo boot from iso file
echo.
echo [a] C:\Users\%USERNAME%\Desktop\DimpleOS\Dimple-01.00.0.1-image-easyBoot.iso
set /p input=
if /i %input%==a goto W

cls
echo input a iso file to boot from
pause
goto V

:W
cls
echo [a] try dimpleOS
echo [b] install dimple OS
echo [c] check dimple system
set /p input=
if /i %input%==a goto X
if /i %input%==b goto 
if /i %input%==c goto 


:X
cls
echo booting up dimpleOS. . .
timeout 10 >nul
goto Boot1

:Boot1
cls
echo === APM 1.2 ====================================================== SVN 9458 ====
echo [                                                                              ]
echo [ DimpleOS  version 0.7.7.0+           [auto-build 6 june 2025 19:54, h2875]   ]
echo [==============================================================================]
echo [ DimpleBIOS VBE(C) 2011                                                       ]
echo [ Version of VESA: 1.0                                                         ]
echo [ Press [V] to change settings, press [Enter] to continue booting              ]
echo [  or wait 2 seconds to continue automatically                                 ]
echo [                                                                              ]
echo [ Current settings:                                                            ]
echo [  [a] Videomode: 1024x768x32                                                  ]
echo [  [b] Add disks visible by BIOS: off                                          ]
echo [  [c] Duplicate debug output to the screen: off                               ]
echo [  [d] Start LAUNCHER after kernel is loaded: on                               ]
echo [  [e] Floppy image: no floppy                                                 ]
echo [                                                                              ]
echo [ Default values were selected to match most of configurations, but not all.   ]
echo [ If the system does not boot, try to disable option [b]. If the system gets   ]
echo [ stuck after booting, enable option [c], disable option [d] and make photo.   ]
echo [                                                                              ]
echo [ DimpleOS comes with ABSOLUTELY NO WARRANTY. See file COPYING for details     ]
echo [                                                                              ]
echo ================================================================================

:: Tangentval V eller Enter, med timeout på 2 sekunder
choice /c VQ /n /t 2 /d Q >nul
if errorlevel 2 goto BOOT3
if errorlevel 1 goto settings_boot

:Boot2
cls
color 7
echo Bootar vidare till operativsystemet...
timeout /t 2 >nul
goto BOOT2

:settings_boot
cls
color E
echo ============================================================================
echo                           DimpleOS Boot settings
echo ============================================================================
echo D:\_
echo.
echo    Volume in drive D is BOOT6ZZ  
echo    Volume serial number is 5808-EF67  
echo    Directory of D:\  
echo.
echo boot_device-dimpeliOS.dll
echo HVDimage.iso      isoFile.iso
echo system_setup.dll  operator56.dll
echo operator65.dll    col.sys
echo PV.iso            SVCsystem-file.exe
echo caleventor.exe    caleventor-system.dll
echo caleventor-V.exe  caleventor-V.dll
echo.
echo                 21 file(s)           7,576,187 bytes  
echo                                     1024 bytes free  
echo.
echo drive: D:\_
echo ======================================================================================
echo                                Boot settings
echo ======================================================================================
echo [a] Color Mode
echo [b] Reboot
echo [c] System-file Executor
echo [d] System Test Executor
echo [e] System-file Checker
echo ======================================================================================
echo === APM 1.2 ====================================================== SVN 9458 ====
echo [                                                                              ]
echo [ DimpleOS  version 0.7.7.0+           [auto-build 6 june 2025 19:54, h2875]   ]
echo [==============================================================================]
echo [ DimpleBIOS VBE(C) 2011                                                       ]
echo [ Version of VESA: 1.0                                                         ]
echo [                                                                              ]
echo [ Current settings:                                                            ]
echo [  [a] Videomode: 1024x768x32                                                  ]
echo [  [b] Add disks visible by BIOS: off                                          ]
echo [  [c] Duplicate debug output to the screen: off                               ]
echo [  [d] Start LAUNCHER after kernel is loaded: on                               ]
echo [  [e] Floppy image: no floppy                                                 ]
echo [                                                                              ]
echo [ Default values were selected to match most of configurations, but not all.   ]
echo [ If the system does not boot, try to disable option [b]. If the system gets   ]
echo [ stuck after booting, enable option [c], disable option [d] and make photo.   ]
echo [                                                                              ]
echo [ DimpleOS comes with ABSOLUTELY NO WARRANTY. See file COPYING for details     ]
echo [                                                                              ]
echo ================================================================================
echo.
echo ============================================================================
set /p input=Enter letter of choice: 
echo ============================================================================
if /i "%input%"=="a" goto color_settings
if /i "%input%"=="b" goto Boot1
if /i "%input%"=="c" goto boot_executor
if /i "%input%"=="d" goto test_executorB
if /i "%input%"=="e" goto checkerB
goto settings_boot

:color_settings
cls
echo ============================================================================
echo Color Settings
echo ============================================================================
echo [a] White
echo [b] Reboot
echo [c] Green
echo [d] Blue
echo ============================================================================
set /p input=Enter letter of choice: 
echo ============================================================================
if /i "%input%"=="a" goto OS_white
if /i "%input%"=="b" goto Boot1
if /i "%input%"=="c" goto OS_green
if /i "%input%"=="d" goto OS_blue
goto color_settings

:: Tillfälliga platshållare för färgkommandon
:OS_white
color 7
goto Boot1

:OS_green
color A
goto Boot1

:OS_blue
color 9
goto Boot1

:: Placeholder-funktioner (du kan fylla i dem själv)
:boot_executor
cls
set /p input=Z:\
if /i %input%==dimpsys goto system10

:test_executorB
echo [test_executorB saknas ännu]
pause
goto settings_boot

:checkerB
echo [checkerB saknas ännu]
pause
goto settings_boot

:BOOT3
cls
echo booting. . .
echo.
echo Z:\_
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\_
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\_
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\_
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\_
timeout 1 >nul
cls
echo booting. . .
echo.
echo Z:\
timeout 1 >nul
goto OZ

:OZ
cls
echo boot from mode
echo =====================
echo [a] continue booting to dimpleOS
echo [b] boot in security mode
set /p input=Z:\
if /i %input%==a goto OS
if /i %input%==b goto 
goto OZ

:OS
cls
echo                          DimpleOS
echo [a] check for uppdates
echo [b] files
echo [r] run
echo [l] load
set /p input=Z:\
if /i %input%==a goto uppdates
if /i %input%==b goto files
if /i %input%==r goto run

goto OS

:uppdates
cls
echo no uppgrades or uppdates avalible
pause
goto OS

:files
cls
echo all files in the directory Z:\
echo [r] run
echo [l] load
echo [b] back
echo.
echo                       Z:\
echo ===============================================
echo apps
echo --------------
echo clock.dvp            bob's game 3.os
echo installer.dvp        inste.MEX
echo dimple-defend.dvp    LV-Boot.MEX
echo files.fls            uppdates.hmbp
echo setigs.dvp           admin-controll.dvp
echo _______________________________
echo system
echo --------------
echo displayer.vbp            loader_displayer.pccs
echo uppdate-reacher.sys.upp  uppdater.vtmp
echo -----------------------------------------------
echo            more system proccesses has been disabled auto
echo                 you can enable system files display
set /p input=Z:\
if /i %input%==b goto OS
if /i %input%==r goto run
if /i %input%==b goto OS
goto files

:run
cls
echo [b] back
echo enter the file you whant to run
set input= 
set /p input=Z:\
if /i %input%==admin-controll.dvp goto admin-controll
if /i %input%==clock.dvp goto clock
if /i %input%==b goto OS
if /i %input%==loader_displayer.pccs goto nos
if /i %input%==displayer.vbp goto nos
if /i %input%==uppdater.vtmp goto nos
if /i %input%==uppdate-reacher.sys.upp goto nos
if /i %input%==files.fls goto files
if /i %input%==installer.dvp goto installer
goto run


:admin-controll
cls
echo ===============================
echo    admin controll setting
echo ===============================
echo the admin is the owner of all the users
echo and the account.
echo the admin has all the power of the current account.
echo if you are not the admin remember the admin might sett upp a password for all admin access things
echo that means you cant creat accounts, go on the admin account, go in this app without the admin password
echo that means you wont be able to access things becouse you need to enable them in the admin controll (this app)
echo.
echo [b] back
echo =================================================================================================================
echo           system access
echo ------------------------------------
echo [a] show more system files {disabled}
echo [c] fiering system files {disabled}
echo [d] test fiering system files {enabled}
echo [h] load system files {restricted}
echo ========================================
echo                 apps
echo -----------------------------------
echo [e] open apps {enabled}
echo [f] add extn to all files {enabled for all}
echo [g] load apps {enabled}
echo [i] change app code {disabled for all}
echo ========================================
echo             admin pass
echo -----------------------------------
echo [j] admin password for all {disabled}
echo [k] admin warning on edit {enabled}
echo [l] admin password {enabled}
echo [m] admin password for admin user access {enabled}
echo [n] admin password for admin controll {disabled}
echo [no access] change admin password {disabled for admin and all}
echo [o] admin password for admin access {enabled}
echo =======================================================
echo                    admin controll
echo =======================================================
echo admin password: 1234
echo main head admin controll: admin/user
echo account maker: all
echo.
set /p input=Z:\
if /i %input%==a goto show1
if /i %input%==b goto OS
if /i %input%==c goto no
if /i %input%==d goto no
if /i %input%==e goto no
if /i %input%==f goto no
if /i %input%==g goto no
if /i %input%==h goto no
if /i %input%==i goto no
if /i %input%==j goto no
if /i %input%==k goto no
if /i %input%==l goto no
if /i %input%==m goto no
if /i %input%==n goto no
if /i %input%==o goto no


:no
cls
echo sorry
echo this setting is unavalible.
timeout 3 >nul
goto OS

:nos
cls
echo running system files has been disabled by admin
pause
goto OS

:installer
cls
echo installer
ecxho [b] back
echo.
echo enter the file in the .net cloud you want to install
set /p input=Z:\
if /i %input%==b goto OS
if /i %input%==bobs-game-1 goto install1

goto installer

:install1
cls
echo installing bob's game 1. . .
timeout 5 >nul
goto done1

:done1
cls
echo done
echo.
echo bob's game 1 has been installed
pause
goto OS2

:show1
cls
echo enter the admin password
set /p input=Z:\
if /i %input%==1234 goto show2

goto OS

:show2
cls
echo show ore system files
echo.
echo [1] enable
echo [2] enable for all
echo [3] disable for all
echo [4] disable for admin
echo [5] enable for admin
set /p input=Z:\
if /i %input%==1 goto OS5
if /i %input%==2 goto OS5
if /i %input%==3 goto OS
if /i %input%==4 goto OS
if /i %input%==5 goto OS5

goto OS

:system10
cls
echo sys10
timeout 1 >nul
echo.
echo.
echo file manegment. . .
timeout 2 >nul
cls
echo filer. . .
echo.
echo contents of the Z:\
echo.
echo amp= %amplifier%
echo crypted.
timeout 4 >nul
echo    Volume in drive Z is BOOT6ZZ  
echo    Volume serial number is 5808-EF67  
echo    Directory of Z:\  
echo.
echo boot_device-dimpeliOS.dll
echo HVDimage.iso      isoFile.iso
echo system_setup.dll  operator56.dll
echo operator65.dll    col.sys
echo PV.iso            SVCsystem-file.exe
echo caleventor.exe    caleventor-system.dll
echo caleventor-V.exe  caleventor-V.dll
echo.
echo                 21 file(s)           7,576,187 bytes  
echo                                     1024 bytes free 
echo.
echo Z:\
pause >nul
goto booted

:booted
cls
echo amp ( %amplifier% )
echo has been VMP'd
echo.
timeout 2 >nul
echo INCT command 'Boot'
timeout 10 >nul
goto screenboot

:screenboot
cls
pause >nul
goto screenboot

:screener1
cls
color 4f
echo       error
echo an error in the system has accured
echo the system is corrupted and cant boot properly
echo.
echo re-install dimpleOS system and boot then
echo.
echo some critical sustem files where missing
timeout 10 >nul
goto ashdfbdjkhgbkdjbkljgbkl











