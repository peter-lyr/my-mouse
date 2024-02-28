^#u::
  WinActivate, ahk_exe nvim-qt.exe
  WinMinimize, ahk_exe nvim-qt.exe
  WinActivate, ahk_exe nvim-qt.exe
return

^#i::
  WinMinimize, ahk_exe nvim-qt.exe
  if (is_active_neovim())
  {
    send {alt down}{tab}
    send {alt up}
  }
return

^#o::
  WinActivate, ahk_exe nvim-qt.exe
return
