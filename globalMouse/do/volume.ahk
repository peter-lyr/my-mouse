volume_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      soundget, volume
      push_msg_action(format("增大音量[{:d}]", volume))
    }
  } else
  {
    send, {volume_up}
  }
return

volume_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      soundget, volume
      push_msg_action(format("降低音量[{:d}]", volume))
    }
  } else
  {
    send, {volume_down}
  }
return
