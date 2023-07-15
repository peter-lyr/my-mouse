try_activate_global_mouse_id:
  if (WinActive("ahk_id " . global_mouse_id) == 0)
  {
    winactivate, ahk_id %global_mouse_id%
  }
return

activate_window:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("active win {:s}", global_mouse_processname))
      }
    } else
    {
      remove_tooltip_en := 1
      gosub try_activate_global_mouse_id
    }
  }
return
