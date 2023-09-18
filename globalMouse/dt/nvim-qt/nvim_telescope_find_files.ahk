nvim_telescope_find_files:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope find_files")
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
      send s
      send {Ctrl up}
    }
  }
return
