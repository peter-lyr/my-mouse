activate_window:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("激活窗口{:s}", global_mouse_title))
      }
    } else
    {
      winactivate, ahk_id %global_mouse_id%
    }
  }
return
