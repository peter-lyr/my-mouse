down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<down>")
    }
  } else
  {
    send {down}
  }
return
