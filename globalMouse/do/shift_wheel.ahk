shift_wheel_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<shift-wheel-up>")
    }
  } else
  {
    send {shift down}{wheelup}
    send {shift up}
  }
return

shift_wheel_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<shift-wheel-down>")
    }
  } else
  {
    send {shift down}{wheeldown}
    send {shift up}
  }
return
