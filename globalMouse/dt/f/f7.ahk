f7:
  if (action_before)
  {
    push_msg_action("<F7>")
  } else
  {
    send {F7 down}
    send {F7 up}
  }
return
