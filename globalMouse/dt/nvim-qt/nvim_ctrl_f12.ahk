nvim_ctrl_f12:
  if (action_before)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim(_title, _processname) == 1)
    {
      winget, _processname, processname, ahk_id %_id%
      push_msg_action("<Ctrl-F12> declaration")
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
      send {Ctrl down}
      send {F12 down}
      send {Ctrl up}
      send {F12 up}
    }
  }
return
