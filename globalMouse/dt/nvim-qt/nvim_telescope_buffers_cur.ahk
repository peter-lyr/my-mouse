nvim_telescope_buffers_cur:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope buffers_cur")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {Ctrl down}
      send v
      send {Ctrl up}
    }
  }
return
