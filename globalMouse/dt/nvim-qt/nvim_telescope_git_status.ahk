nvim_telescope_git_status:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope git status")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send gf
    }
  }
return
