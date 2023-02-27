win_comma_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<win-comma>")
    }
  } else
  {
    remove_tooltip_en := 1
    send {lwin down},
  }
return

win_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<win-up>")
    }
  } else
  {
    remove_tooltip_en := 1
    send {lwin up}
  }
return
