count_pre:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("尝试增加count({:d})", count))
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
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("增加count({:d})", count))
      }
    } else
    {
      count += 1
      if (count > count_max)
      {
        count := 1
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
        push_msg_action(format("尝试count_fix({:d}) -> {:d}", count_fix, _count_fix))
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
