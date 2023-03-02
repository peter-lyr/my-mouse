@echo off
taskkill /f /im main.exe
taskkill /f /im autohotkey.exe
taskkill /f /im globalMouse.exe
Ahk2Exe.exe /icon icon\main.ico /base E:\Program_Files\AutoHotkey\AutoHotkeyA32.exe /in main.ahk /out main.exe
start /MIN /B main.exe
timeout /t 5
exit
