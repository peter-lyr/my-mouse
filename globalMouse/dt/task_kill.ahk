task_kill:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 0)
      {
        push_msg_action(format("taskkill /f /im {:s}", global_mouse_processname))
      }
    }
  } else
  {
    _cmd := format("taskkill /f /im {:s}", global_mouse_processname)
    if (is_explorer(global_mouse_title, global_mouse_processname) == 0)
    {
      runwait %_cmd%
    }
  }
return
