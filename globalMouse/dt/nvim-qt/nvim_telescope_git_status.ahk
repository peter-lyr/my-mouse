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
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {F2 down}
      send {F2 up}
    }
  }
return
