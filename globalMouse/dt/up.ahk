up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<up>")
    }
  } else
  {
    send {up}
  }
return
