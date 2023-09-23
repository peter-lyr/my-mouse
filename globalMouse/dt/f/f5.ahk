f5:
  if (action_before)
  {
    push_msg_action("<F5>")
  } else
  {
    send {F5 down}
    send {F5 up}
  }
return
