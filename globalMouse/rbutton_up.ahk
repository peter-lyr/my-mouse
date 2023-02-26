do_rbutton_up:
  switch direction
  {
    case "center":
    {
      switch count
      {
        case 3:
        {
          gosub count_fix_on
        }
        case 5:
        {
          gosub count_fix_off
        }
      }
    }
  }
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
    }
  } else
  {
  }
return
