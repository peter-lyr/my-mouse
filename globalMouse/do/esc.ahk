esc:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action(format("发送<esc>到{:s}", global_mouse_processname))
    }
  } else
  {
    remove_tooltip_en := 1
    gosub try_activate_global_mouse_id
    send {esc}
  }
return
