f3:
  if (action_before)
  {
    push_msg_action("<F3>")
  } else
  {
    send {F3 down}
    send {F3 up}
  }
return
