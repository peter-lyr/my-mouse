@echo off
set p=%~dp0
set restart=0
taskkill /f /im my-mouse.exe
if %errorlevel% EQU 0 (
  set restart=1
)

Ahk2Exe.exe /icon %p%icon\main.ico /base ..\AutoHotkey\AutoHotkeyA32.exe /in %p%main.ahk /out %p%my-mouse.exe

gcc swapmousebutton.c -Wall -s -ffunction-sections -fdata-sections -Wl,--gc-sections -O3 -o swapmousebutton
strip -s swapmousebutton.exe
upx -qq --best swapmousebutton.exe

if %restart% EQU 1 (
  start /MIN /B %p%my-mouse.exe
)
exit
