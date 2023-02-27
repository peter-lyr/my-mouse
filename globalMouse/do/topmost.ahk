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
          push_msg_action(format("取消置顶: {:s}", global_mouse_processname))
        } else
        {
          push_msg_action(format("置顶: {:s}", global_mouse_processname))
        }
      } else
      {
        push_msg_action("无法置顶桌面")
      }
    }
  } else
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      winget, status, exstyle, ahk_id %global_mouse_id%
      if (status & 0x8)
      {
        push_msg_action(format("已取消置顶: {:s}", global_mouse_processname))
        winset, alwaysontop, off, ahk_id %global_mouse_id%
      } else
      {
        push_msg_action(format("已置顶: {:s}", global_mouse_processname))
        winset, alwaysontop, on, ahk_id %global_mouse_id%
      }
      gosub try_activate_global_mouse_id
    }
  }
return
