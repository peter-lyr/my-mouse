often_window_new:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action(format("choose as often window: {:s}", global_mouse_processname))
    }
  } else
  {
    remove_tooltip_en := 1
    often_window_id := global_mouse_id
  }
return

often_window_activate:
  if (winexist("ahk_id " . often_window_id))
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        wingettitle, _title, ahk_id %often_window_id%
        winget, _processname, processname, ahk_id %often_window_id%
        push_msg_action(format("active often window: {:s} [{:s}]", _processname, _title))
      }
    } else
    {
      remove_tooltip_en := 1
      if (WinActive("ahk_id " . often_window_id) == 0)
      {
        winactivate, ahk_id %often_window_id%
      }
    }
  }
return
