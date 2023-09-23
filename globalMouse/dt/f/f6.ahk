f6:
  if (action_before)
  {
    push_msg_action("<F6>")
  } else
  {
    send {F6 down}
    send {F6 up}
  }
return
