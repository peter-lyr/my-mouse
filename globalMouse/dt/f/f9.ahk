f9:
  if (action_before)
  {
    push_msg_action("<F9>")
  } else
  {
    send {F9 down}
    send {F9 up}
  }
return
