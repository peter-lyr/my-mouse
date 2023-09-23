f10:
  if (action_before)
  {
    push_msg_action("<F10>")
  } else
  {
    send {F10 down}
    send {F10 up}
  }
return
