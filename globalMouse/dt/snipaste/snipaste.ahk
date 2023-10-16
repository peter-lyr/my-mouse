snipaste_capture_screen:
  if (action_before)
  {
    push_msg_action("<Alt-F1>")
  } else
  {
    send {Alt down}
    send {F1 down}
    send {Alt up}
    send {F1 up}
  }
return

snipaste_fix_captured:
  if (action_before)
  {
    push_msg_action("<Alt-F3>")
  } else
  {
    send {Alt down}
    send {F3 down}
    send {Alt up}
    send {F3 up}
  }
return
