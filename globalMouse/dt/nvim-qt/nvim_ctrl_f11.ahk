nvim_ctrl_f11:
  if (action_before)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim() == 1)
    {
      winget, _processname, processname, ahk_id %_id%
      push_msg_action("<Ctrl-F11> go file")
    }
  } else
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim() == 1)
    {
      click left
      click up left
      send {Ctrl down}
      send {F11 down}
      send {Ctrl up}
      send {F11 up}
    }
  }
return