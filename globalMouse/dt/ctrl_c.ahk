ctrl_c:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-c>")
    }
  } else
  {
    push_msg("copied")
    send {ctrl down}c
    send {ctrl up}
  }
return
