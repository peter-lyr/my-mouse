volume_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      soundget, volume
      push_msg_action(format("volume up[{:d}]", volume))
    }
  } else
  {
    gosub try_activate_global_mouse_id
    send {volume_up}
  }
return

volume_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      soundget, volume
      push_msg_action(format("volume down[{:d}]", volume))
    }
  } else
  {
    gosub try_activate_global_mouse_id
    send {volume_down}
  }
return
