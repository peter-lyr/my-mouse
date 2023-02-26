do_rbutton_mbutton_up:
  switch direction
  {
    case "center":
    {
      switch count
      {
        case 2:
        {
          gosub count_fix_change_do
        }
        case 4:
        {
          gosub count_fix_change_do
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
