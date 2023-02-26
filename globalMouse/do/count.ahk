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
        push_msg_action(format("count({:d}) -> {:d}尝试", count, _count))
      }
    } else
    {
      count_ready := 1
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
      count := _count
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
        push_msg_action(format("count_fix({:d}) -> {:d}尝试", count_fix, _count_fix))
      }
    } else
    {
      count_fix_change_ready := 1
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
      count_fix := _count_fix
      push_msg_action(format("count_fix({:d})", count_fix))
    }
  }
return
