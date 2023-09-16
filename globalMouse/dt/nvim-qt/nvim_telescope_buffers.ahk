nvim_telescope_buffers:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope buffers")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Space down}
      send {Space up}
      send sb
    }
  }
return
