count_pre:
  if (count_canceled == 0)
  {
    if (action_before)
    {
      if (flag_rbutton_up == 0)
      {
          push_msg_action("尝试增加count")
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
        push_msg_action("增加count")
      }
    } else
    {
      count += 1
        if (count > count_max)
        {
          count := 1
        }
    }
  }
return
