ctrl_y:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-y>")
    }
  } else
  {
    send {ctrl down}y
    send {ctrl up}
  }
return
