minimize_window:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action(format("minimize win{:s}", global_mouse_processname))
    }
  } else
  {
    remove_tooltip_en := 1
    winminimize, ahk_id %global_mouse_id%
  }
return
