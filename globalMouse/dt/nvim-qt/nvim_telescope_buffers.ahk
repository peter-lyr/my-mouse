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
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {F3 down}
      send {F3 up}
    }
  }
return
