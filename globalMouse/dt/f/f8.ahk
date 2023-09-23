f8:
  if (action_before)
  {
    push_msg_action("<F8>")
  } else
  {
    send {F8 down}
    send {F8 up}
  }
return
