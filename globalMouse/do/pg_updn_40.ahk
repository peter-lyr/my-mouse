pgup_40:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("pgup 40")
    }
  } else
  {
    gosub try_activate_global_mouse_id
    pgdn_cnt := 0
    while pgdn_cnt < 40
    {
      if (flag_rbutton_wheel_down == 1)
      {
        break
      }
      if (flag_rbutton_wheel_up == 1)
      {
        pgdn_cnt := 0
      }
      pgdn_cnt += 1
      send, {pgup}
      if (is_rbutton_up())
      {
        break
      }
    }
  }
return

pgdn_40:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("pgup 40")
    }
  } else
  {
    gosub try_activate_global_mouse_id
    pgdn_cnt := 0
    while pgdn_cnt < 40
    {
      if (flag_rbutton_wheel_up == 1)
      {
        break
      }
      if (flag_rbutton_wheel_down == 1)
      {
        pgdn_cnt := 0
      }
      pgdn_cnt += 1
      send, {pgdn}
      if (is_rbutton_up())
      {
        break
      }
    }
  }
return
