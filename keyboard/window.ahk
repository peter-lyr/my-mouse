^#;::
  winget, _transparency, transparent, a
  if (_transparency == "")
  {
    _transparency := 255
  }
  if (_transparency > 0 && _transparency < 255)
  {
    winset, transparent, 255, a
  } else
  {
    winset, transparent, 200, a
  }
return

^#l::
  winget, status, exstyle, a
  winget, _processname, processname, a
  if (status & 0x8)
  {
    m := format("topmost canceled: {:s}", _processname)
    winset, alwaysontop, off, a
  } else
  {
    m := format("topmost already: {:s}", _processname)
    winset, alwaysontop, on, a
  }
  tooltip %m%
  settimer, remove_tooltip_do, -2300
return

^#h::
  send {alt down}{tab}
  send {alt up}
return

^#j::
  winminimize a
return

^#k::
  winget, _status, minmax, a
  if (_status == 0)
  {
    winmaximize a
  } else
  {
    winrestore a
  }
return
