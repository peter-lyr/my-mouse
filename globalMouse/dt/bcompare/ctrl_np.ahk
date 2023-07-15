bcompare_ctrl_n:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_bcompare(global_mouse_processname) == 1)
      {
        push_msg_action("next diff")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_bcompare(global_mouse_processname) == 1)
    {
      gosub try_activate_global_mouse_id
      send, {ctrl down}n
      send, {ctrl up}
    }
  }
return

bcompare_ctrl_p:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_bcompare(global_mouse_processname) == 1)
      {
        push_msg_action("prev diff")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_bcompare(global_mouse_processname) == 1)
    {
      gosub try_activate_global_mouse_id
      send, {ctrl down}p
      send, {ctrl up}
    }
  }
return

