win_tab:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<win-tab>")
    }
  } else
  {
    remove_tooltip_en := 1
    send {lwin down}{tab}
    send {lwin up}
  }
return
