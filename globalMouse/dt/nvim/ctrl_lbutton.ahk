nvim_references:
  if (is_neovim(global_mouse_title, global_mouse_processname)) {
    if (action_before)
    {
        push_msg_action("<Shift-F12>")
    } else
    {
      click left
      click up left
      send {Shift down}
      send {F12 down}
      send {Shift up}
      send {F12 up}
    }
  }
return

nvim_ctrl_lbutton:
  if (is_neovim(global_mouse_title, global_mouse_processname) && !flag_win_move_resize_en) {
    if (action_before)
    {
      push_msg_action("<Ctrl-LeftButton>")
    } else
    {
      send {ctrl down}
      click left
      send {ctrl up}
      click up left
    }
  }
return

nvim_ctrl_rbutton:
  if (is_neovim(global_mouse_title, global_mouse_processname) && !flag_win_move_resize_en) {
    if (action_before)
    {
      push_msg_action("<Ctrl-RightButton>")
    } else
    {
      send {ctrl down}
      click right
      send {ctrl up}
      click up right
    }
  }
return
