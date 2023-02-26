do_rbutton_mbutton_down:
  switch count
  {
    case 1:
    {
      gosub resize_window_start
    }
    case 2:
    {
      gosub resize_window_start
    }
  }
  switch direction
  {
    case "center":
    {
      switch count
      {
        case 2:
        {
          gosub count_fix_change_pre
        }
        case 4:
        {
          gosub count_fix_change_pre
        }
      }
    }
  }
return
