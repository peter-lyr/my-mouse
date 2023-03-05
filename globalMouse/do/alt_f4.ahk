alt_f4:
  if (is_desktop(global_mouse_title) == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("winkill{:s}", global_mouse_processname))
      }
    } else
    {
      remove_tooltip_en := 1
      gosub try_activate_global_mouse_id
      send {alt down}{f4}
      send {alt up}
    }
  }
return

alt_f4_pre:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (count_canceled == 1)
      {
        mousegetpos, , , _id
        wingettitle, _title, ahk_id %_id%
        if (is_desktop(_title) == 0)
        {
          winget, _processname, processname, ahk_id %_id%
          push_msg_action(format("尝试winkill{:s}", _processname))
        }
      }
    }
  } else
  {
  }
return

alt_f4_do:
  if (count_canceled == 1)
  {
    mousegetpos, , , _id
    wingettitle, _title, ahk_id %_id%
    if (is_desktop(_title) == 0)
    {
      if (action_before)
      {
        if (flag_rbutton_up == 0)
        {
          winget, _processname, processname, ahk_id %_id%
          push_msg_action(format("winkill{:s}", _processname))
        }
      } else
      {
        remove_tooltip_en := 1
        winkill ahk_id %_id%
      }
    }
  }
return
