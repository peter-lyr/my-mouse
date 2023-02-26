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

count_fix_on:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count({:d})固定", count))
      }
    } else
    {
      count_fix := 1
      push_msg_action(format("count({:d})已固定", count))
    }
  }
return

count_fix_off:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
        push_msg_action(format("count({:d})每次恢复为1", count))
      }
    } else
    {
      count_fix := 0
      push_msg_action(format("count({:d})已每次恢复为1", count))
    }
  }
return
