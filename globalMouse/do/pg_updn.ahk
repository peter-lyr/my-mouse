pgup:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<pgup>")
    }
  } else
  {
    mousegetpos, , , pgupdn_id
    winactivate, ahk_id %pgupdn_id%
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
    mousegetpos, , , pgupdn_id
    winactivate, ahk_id %pgupdn_id%
    send {pgdn down}
    send {pgdn up}
  }
return
