esc:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action(format("send <esc> to {:s}", global_mouse_processname))
    }
  } else
  {
    remove_tooltip_en := 1
    gosub try_activate_global_mouse_id
    send {esc}
  }
return

esc_pre:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (count_canceled == 1)
      {
        mousegetpos, , , _id
        winget, _processname, processname, ahk_id %_id%
        push_msg_action(format("try send <esc> to {:s}", _processname))
      }
    }
  } else
  {
    if (WinActive("ahk_id " . _id) == 0)
    {
      winactivate, ahk_id %_id%
    }
  }
return

esc_do:
  if (count_canceled == 1)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        mousegetpos, , , _id
        winget, _processname, processname, ahk_id %_id%
        push_msg_action(format("send <esc> to {:s}", _processname))
      }
    } else
    {
      remove_tooltip_en := 1
      send {esc}
    }
  }
return
