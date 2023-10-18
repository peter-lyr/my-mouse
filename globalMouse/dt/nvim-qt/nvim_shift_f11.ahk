nvim_shift_f11:
  if (action_before)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim() == 1)
    {
      winget, _processname, processname, ahk_id %_id%
      push_msg_action("<Shift-F11> copy file")
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
      send {Shift down}
      send {F11 down}
      send {Shift up}
      send {F11 up}
    }
  }
return