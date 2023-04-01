ctrl_home:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-home>")
    }
  } else
  {
    mousegetpos, , , ctrl_home_id
    winactivate, ahk_id %ctrl_home_id%
    remove_tooltip_en := 1
    send {ctrl down}{home}
    send {ctrl up}
  }
return

ctrl_end:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-end>")
    }
  } else
  {
    mousegetpos, , , ctrl_home_id
    winactivate, ahk_id %ctrl_home_id%
    remove_tooltip_en := 1
    send {ctrl down}{end}
    send {ctrl up}
  }
return
