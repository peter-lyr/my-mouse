f2:
  if (action_before)
  {
    push_msg_action("<F2>")
  } else
  {
    send {F2 down}
    send {F2 up}
  }
return
