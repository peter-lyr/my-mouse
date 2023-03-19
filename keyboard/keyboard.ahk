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
    m := format("已取消置顶: {:s}", _processname)
    winset, alwaysontop, off, a
  } else
  {
    m := format("已置顶: {:s}", _processname)
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

~!f5::
  if (is_active_explorer())
  {
    send {alt down}{left}
    send {alt up}
  }
return

~!f6::
  if (is_active_explorer())
  {
    send {alt down}{up}
    send {alt up}
  }
return

~!f7::
  if (is_active_explorer())
  {
    send {alt down}{right}
    send {alt up}
  }
return

~!l::
  send {right}
return

~!h::
  send {left}
return

~+!l::
  send {ctrl down}{right}
  send {ctrl up}
return

~+!h::
  send {ctrl down}{left}
  send {ctrl up}
return

~!i::
  send {home}
return

~!o::
  send {end}
return
