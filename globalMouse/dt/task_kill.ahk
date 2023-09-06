task_kill:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      mousegetpos, , , taskkill_id
      wingettitle, taskkill_title, ahk_id %taskkill_id%
      winget, taskkill_processname, processname, ahk_id %taskkill_id%
      if (is_explorer(taskkill_title, taskkill_processname) == 0)
      {
        push_msg_action(format("taskkill /f /im {:s}", taskkill_processname))
      }
    }
  } else
  {
    _cmd := format("taskkill /f /im {:s}", taskkill_processname)
    if (is_explorer(taskkill_title, taskkill_processname) == 0)
    {
      runwait %_cmd%
    }
  }
return
