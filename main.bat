@echo off
set p=%~dp0
taskkill /f /im my-mouse.exe
taskkill /f /im autohotkey.exe
taskkill /f /im globalMouse.exe
Ahk2Exe.exe /icon %p%icon\main.ico /base C:\Program_Files\AutoHotkey\AutoHotkeyA32.exe /in %p%main.ahk /out %p%my-mouse.exe
start /MIN /B %p%my-mouse.exe
exit
