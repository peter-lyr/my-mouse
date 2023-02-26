do_rbutton_mbutton_up:
  switch count
  {
    case 1:
    {
      gosub resize_window_end
    }
    case 2:
    {
      gosub resize_window_end
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
          gosub count_fix_change_do
        }
        case 4:
        {
          gosub count_fix_change_do
        }
      }
    }
  }
return
