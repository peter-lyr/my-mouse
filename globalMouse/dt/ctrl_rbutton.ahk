ctrl_rbutton:
  if (!flag_win_move_resize_en) {
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
