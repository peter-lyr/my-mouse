ctrl_v:
  if (action_before)
  {
    if (!is_neovim())
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action("<ctrl-v>")
      }
    }
  } else
  {
    if (!is_neovim())
    {
      send {ctrl down}v
      send {ctrl up}
    }
  }
return

