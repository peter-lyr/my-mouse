@echo off
taskkill /f /im my-mouse.exe
taskkill /f /im autohotkey.exe
taskkill /f /im globalMouse.exe
Ahk2Exe.exe /icon icon\main.ico /base C:\Program_Files\AutoHotkey\AutoHotkeyA32.exe /in main.ahk /out my-mouse.exe
start /MIN /B my-mouse.exe
exit
