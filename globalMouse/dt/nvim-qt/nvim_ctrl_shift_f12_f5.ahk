nvim_ctrl_shift_f12_f5:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope nvim_ctrl_shift_f12_f5")
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
      send {F5 down}
      send {F5 up}
    }
  }
return