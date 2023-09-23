f11:
  if (action_before)
  {
    push_msg_action("<F11>")
  } else
  {
    send {F11 down}
    send {F11 up}
  }
return
