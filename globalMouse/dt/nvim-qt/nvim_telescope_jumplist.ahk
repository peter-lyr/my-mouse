nvim_telescope_jumplist:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope jumplist")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send sj
    }
  }
return
