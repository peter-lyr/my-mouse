@echo off
set p=%~dp0
taskkill /f /im my-mouse.exe
taskkill /f /im autohotkey.exe

AutoHotkey\Ahk2Exe.exe /icon %p%icon\main.ico /base AutoHotkey\AutoHotkeyA32.exe /in %p%main.ahk /out %p%my-mouse.exe

start /MIN /B %p%my-mouse.exe
exit
