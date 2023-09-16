nvim_telescope_find_files:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope find files")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send s
      send {Space down}
      send {Space up}
    }
  }
return
