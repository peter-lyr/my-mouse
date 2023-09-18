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
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {F7 down}
      send {F7 up}
    }
  }
return