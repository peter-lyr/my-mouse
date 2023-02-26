maximize_restore_window:
  if (action_before)
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      winget, _status, minmax, ahk_id %global_mouse_id%
      if (_status == 0)
      {
        push_msg(format("最大化窗口: {:s}", global_mouse_processname))
      } else
      {
        push_msg(format("恢复窗口: {:s}", global_mouse_processname))
      }
    } else
    {
      push_msg("桌面无法最大化")
    }
  } else
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      winget, _status, minmax, ahk_id %global_mouse_id%
      if (_status == 0)
      {
        winmaximize, ahk_id %global_mouse_id%
      } else
      {
        winrestore, ahk_id %global_mouse_id%
      }
    }
  }
return
