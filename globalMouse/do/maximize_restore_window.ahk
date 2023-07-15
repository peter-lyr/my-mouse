maximize_restore_window:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_desktop(global_mouse_title) == 0)
      {
        winget, _status, minmax, ahk_id %global_mouse_id%
        if (_status == 0)
        {
          push_msg(format("maximize win: {:s}", global_mouse_processname))
        } else
        {
          push_msg(format("restore win: {:s}", global_mouse_processname))
        }
      } else
      {
        push_msg("can not maximize win")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_desktop(global_mouse_title) == 0)
    {
      winget, _status, minmax, ahk_id %global_mouse_id%
      if (_status == 0)
      {
        winmaximize, ahk_id %global_mouse_id%
        gosub try_activate_global_mouse_id
      } else
      {
        winrestore, ahk_id %global_mouse_id%
      }
    }
  }
return
