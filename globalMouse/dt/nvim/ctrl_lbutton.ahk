nvim_ctrl_lbutton:
  if (is_mouse_on_neovim() && !flag_win_move_resize_en) {
    if (action_before)
    {
        push_msg_action("ctrl lbutton")
    } else
    {
      send {esc down}
      send {esc up}
      send {ctrl down}
      click, left
      send {ctrl up}
      click, up left
    }
  }
return

nvim_ctrl_rbutton:
  if (is_mouse_on_neovim() && !flag_win_move_resize_en) {
    if (action_before)
    {
      push_msg_action("ctrl rbutton")
    } else
    {
      send {esc down}
      send {esc up}
      send {ctrl down}
      click, right
      send {ctrl up}
      click, up right
    }
  }
return
