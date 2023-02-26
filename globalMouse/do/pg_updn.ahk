pgup:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<pgup>")
    }
  } else
  {
    send {pgup down}
    send {pgup up}
  }
return

pgdn:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<pgdn>")
    }
  } else
  {
    send {pgdn down}
    send {pgdn up}
  }
return
