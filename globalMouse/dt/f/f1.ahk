f1:
  if (action_before)
  {
    push_msg_action("<F1>")
  } else
  {
    send {F1 down}
    send {F1 up}
  }
return
