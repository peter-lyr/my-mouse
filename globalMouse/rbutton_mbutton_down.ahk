do_rbutton_mbutton_down:
  switch count
  {
    case 1:
    {
      gosub resize_window_pre
      gosub ctrl_rbutton
    }
    case 2:
    {
      gosub alt_f4_pre
    }
    case 3:
    {
      gosub task_kill
    }
    case 4:
    {
      switch direction
      {
        case "up":
          gosub explorer_restart
      }
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
