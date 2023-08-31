do_rbutton_lbutton_down:
  gosub count_pre
  switch count
  {
    case 1:
    {
      gosub move_window_pre
      gosub nvim_ctrl_lbutton
    }
    case 2:
    {
      gosub move_window_pre
      gosub nvim_references
    }
    case 4:
    {
      gosub esc_pre
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
