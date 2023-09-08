nvim_f11:
  if (action_before)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim(_title, _processname) == 1)
    {
      winget, _processname, processname, ahk_id %_id%
      push_msg_action("<F11> ClangdSwitchSourceHeader")
    }
  } else
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim(_title, _processname) == 1)
    {
      click left
      click up left
      send {F11 down}
      send {F11 up}
    }
  }
return
