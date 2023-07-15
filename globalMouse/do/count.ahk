count_cancel:
  count_canceled := 1
return

count_cal:
  _count := count + 1
  if (_count > count_max)
  {
    _count := 1
  }
return

count_pre:
  if (count_canceled == 0)
  {
    gosub count_cal
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count({:d}) -> {:d} try", count, _count))
      }
    } else
    {
      count_ready := 1
      settimer, count_cancel, -300
    }
  }
return

count_do:
  if (count_ready == 1 and count_canceled == 0)
  {
    gosub count_cal
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count({:d}) -> {:d}", count, _count))
      }
    } else
    {
      settimer, count_cancel, off
      count := _count
      if (always_show_msg == -1)
      {
        _m := format("[{:d}/{:d}]", count, count_fix)
        tooltip %_m%
        settimer, remove_tooltip_do, -2300
      }
      flag_rbutton_up_canceled := 0
    }
  }
return

count_fix_change_cal:
  _count_fix := count_fix + 2
  if (_count_fix > count_max)
  {
    _count_fix := 1
  }
return

count_fix_change_pre:
  if (count_canceled == 0)
  {
    gosub count_fix_change_cal
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count_fix({:d}) -> {:d} try", count_fix, _count_fix))
      }
    } else
    {
      count_fix_change_ready := 1
      settimer, count_cancel, -300
    }
  }
return

count_fix_change_do:
  if (count_fix_change_ready == 1 and count_canceled == 0)
  {
    gosub count_fix_change_cal
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count_fix({:d}) -> {:d}", count_fix, _count_fix))
      }
    } else
    {
      settimer, count_cancel, off
      count_fix := _count_fix
      if (always_show_msg == 1)
      {
        push_msg_action(format("count_fix({:d})", count_fix))
      } else if (always_show_msg == -1)
      {
        _m := format("[{:d}/{:d}]", count, count_fix)
        tooltip %_m%
        settimer, remove_tooltip_do, -2300
      }
    }
  }
return

count_rbutton_cancel:
  count_rbutton_ready := 0
return

count_rbutton_do:
  if (count_rbutton_ready == 1 and mod(count, 2) == 1)
  {
    gosub count_cal
    count := _count
    gosub count_rbutton_cancel
    gosub count_windows_do
  }
return

count_rbutton_pre:
  count_rbutton_ready := 1
  settimer, count_rbutton_cancel, -300
  if (mod(count, 2) == 1)
  {
    gosub count_windows_pre
  }
return

count_lbutton_do:
  if (count_lbutton_ready)
  {
    if (flag_rbutton_lbutton_up)
    {
      count_lbutton_ready := 0
      flag_rbutton_up_canceled := 0
      gosub count_cal
      count := _count
      click, up left
    }
  }
return

count_lbutton_pre:
  if (!is_lbutton_up())
  {
    count_lbutton_ready := 1
  }
return

count_windows_do:
  detecthiddenwindows off
  winget, windowid, list
  loop, % windowid {
    cwindow = % windowid%a_index%
    if (!has_value(count_windows, cwindow))
    {
      winget, _processname, processname, ahk_id %cwindow%
      if (strlen(_processname) > 0)
      {
        send {esc}
      }
    }
  }
return

count_windows_pre:
  detecthiddenwindows off
  winget, windowid, list
  count_windows := []
  loop, % windowid {
    cwindow = % windowid%a_index%
    count_windows.push(cwindow)
  }
return
