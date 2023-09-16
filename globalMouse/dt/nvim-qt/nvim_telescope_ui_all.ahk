nvim_telescope_ui_all:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope ui all")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send sA
    }
  }
return
