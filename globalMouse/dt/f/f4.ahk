f4:
  if (action_before)
  {
    push_msg_action("<F4>")
  } else
  {
    send {F4 down}
    send {F4 up}
  }
return
