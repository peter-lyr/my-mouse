pgup:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<pgup>")
    }
  } else
  {
    if (WinActive("ahk_id " . global_mouse_id) == 0)
    {
      winactivate, ahk_id %global_mouse_id%
    }
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
    if (WinActive("ahk_id " . global_mouse_id) == 0)
    {
      winactivate, ahk_id %global_mouse_id%
    }
    send {pgdn down}
    send {pgdn up}
  }
return
