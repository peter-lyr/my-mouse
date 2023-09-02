shift_f12:
  if (action_before)
  {
      push_msg_action("<Shift-F12>")
  } else
  {
    click left
    click up left
    send {Shift down}
    send {F12 down}
    send {Shift up}
    send {F12 up}
  }
return
