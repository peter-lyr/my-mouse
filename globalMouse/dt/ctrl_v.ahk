ctrl_v:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-v>")
    }
  } else
  {
    send {ctrl down}v
    send {ctrl up}
  }
return

