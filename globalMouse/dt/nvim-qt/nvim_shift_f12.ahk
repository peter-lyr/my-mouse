nvim_shift_f12:
  if (action_before)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    winget, _processname, processname, ahk_id %_id%
    if (is_neovim() == 1)
    {
      winget, _processname, processname, ahk_id %_id%
      push_msg_action("<Shift-F12> references")
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
      send {F12 down}
      send {Shift up}
      send {F12 up}
    }
  }
return
