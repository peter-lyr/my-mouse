do_rbutton_lbutton_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action(direction)
    }
  } else {
    push_msg_action(direction . " done")
  }
return
