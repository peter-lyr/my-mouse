ctrl_c:
  if (action_before)
  {
    if (!is_neovim())
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action("<ctrl-c>")
      }
    }
  } else
  {
    if (!is_neovim())
    {
      push_msg("copied")
      send {ctrl down}c
      send {ctrl up}
    }
  }
return
