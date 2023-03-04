ctrl_z:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-z>")
    }
  } else
  {
    send {ctrl down}z
    send {ctrl up}
  }
return
