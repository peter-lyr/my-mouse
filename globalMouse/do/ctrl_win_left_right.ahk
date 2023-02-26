ctrl_win_right:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-win-right>")
    }
  } else
  {
    send {ctrl down}{lwin down}{right}
    send {ctrl up}
    send {lwin up}
  }
return

ctrl_win_left:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-win-left>")
    }
  } else
  {
    send {ctrl down}{lwin down}{left}
    send {ctrl up}
    send {lwin up}
  }
return
