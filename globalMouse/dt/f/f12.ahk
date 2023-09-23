f12:
  if (action_before)
  {
    push_msg_action("<F12>")
  } else
  {
    send {F12 down}
    send {F12 up}
  }
return
