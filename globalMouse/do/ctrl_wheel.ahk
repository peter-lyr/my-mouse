ctrl_wheel_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-wheel-up>")
    }
  } else
  {
    gosub try_activate_global_mouse_id
    send {ctrl down}{wheelup}
    send {ctrl up}
  }
return

ctrl_wheel_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-wheel-down>")
    }
  } else
  {
    gosub try_activate_global_mouse_id
    send {ctrl down}{wheeldown}
    send {ctrl up}
  }
return
