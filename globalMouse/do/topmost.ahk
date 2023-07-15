topmost_toggle:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_desktop(global_mouse_title) == 0)
      {
        winget, status, exstyle, ahk_id %global_mouse_id%
        if (status & 0x8)
        {
          push_msg_action(format("cancel topmost: {:s}", global_mouse_processname))
        } else
        {
          push_msg_action(format("topmost: {:s}", global_mouse_processname))
        }
      } else
      {
        push_msg_action("can not topmost")
      }
    }
  } else
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      winget, status, exstyle, ahk_id %global_mouse_id%
      if (status & 0x8)
      {
        push_msg_action(format("topmost canceled: {:s}", global_mouse_processname))
        winset, alwaysontop, off, ahk_id %global_mouse_id%
      } else
      {
        push_msg_action(format("topmost already: {:s}", global_mouse_processname))
        winset, alwaysontop, on, ahk_id %global_mouse_id%
      }
      gosub try_activate_global_mouse_id
    }
  }
return
