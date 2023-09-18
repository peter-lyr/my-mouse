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
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {Ctrl down}
      send a
      send {Ctrl up}
    }
  }
return
