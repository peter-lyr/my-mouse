ctrl_lbutton:
  if (!flag_win_move_resize_en) {
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
