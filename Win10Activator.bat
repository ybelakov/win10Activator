@ECHO OFF

whoami /groups | find "S-1-16-12288" > nul

if %errorlevel% == 0 (
 ECHO  Hello!
 ECHO: Please select your Windows 10 version:
) else (
 ECHO   Please run this program as an Administrator!
 ECHO   Exiting...
 pause
 exit
)

@ECHO OFF
ECHO:
ECHO    1) Home
ECHO    2) Home N
ECHO    3) Home Single Language
ECHO    4) Home Country Specific
ECHO    5) Professional
ECHO    6) Professional N
ECHO    7) Education
ECHO    8) Education N
ECHO    9) Enterprise
ECHO    10) Enterprise N
ECHO:
ECHO:
SET /P _inputversion=Please enter your version (number):
ECHO Starting the process...


IF "%_inputversion%"=="1" goto homeKey
IF "%_inputversion%"=="2" goto homeNKey
IF "%_inputversion%"=="3" goto homeSL
IF "%_inputversion%"=="4" goto homeCS
IF "%_inputversion%"=="5" goto profKey
IF "%_inputversion%"=="6" goto profNKey
IF "%_inputversion%"=="7" goto eduKey
IF "%_inputversion%"=="8" goto eduNKey
IF "%_inputversion%"=="9" goto entKey
IF "%_inputversion%"=="10" goto entNkey

echo Invalid version
goto invalidexit

:homeKey
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto commonexit

:homeNKey
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
goto commonexit

:homeSL
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
goto commonexit

:homeCS
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
goto commonexit

:profKey
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto commonexit

:profNKey
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
goto commonexit

:eduKey
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto commonexit

:eduNKey
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto commonexit

:entKey
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto commonexit

:entNkey
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto commonexit


:commonexit
ECHO Now Activating...
slmgr /skms kms8.msguides.com
slmgr /ato
ECHO Windows activation process completed!
pause

:invalidexit
PAUSE
