nvim_telescope_file_browser:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope file browser")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send sa
    }
  }
return
