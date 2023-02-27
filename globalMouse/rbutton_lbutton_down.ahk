do_rbutton_lbutton_down:
  gosub count_pre
  switch count
  {
    case 1:
    {
      gosub move_window_start
    }
    case 2:
    {
      gosub move_window_start
    }
  }
  switch direction
  {
    case "up":
    {
      switch count
      {
        case 3:
        {
          gosub win_comma_down
        }
      }
    }
  }
return
