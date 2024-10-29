@echo off
setlocal

set "IP_ADDRESS=192.168.1.65"  REM Replace with the target IP address
set "SOUND_FILE=C:\Users\Admin\Downloads\mixkit-sci-fi-ship-siren-alert-1653.wav"  REM Replace with the path to your .wav file

:loop
ping -n 1 %IP_ADDRESS% >nul
if errorlevel 1 (
    echo Ping to %IP_ADDRESS% failed! Playing warning sound.
    start /min wmplayer "%SOUND_FILE%"
    timeout /t 1 >nul
) else (
    echo Ping to %IP_ADDRESS% successful.
)
timeout /t 1 >nul
goto loop