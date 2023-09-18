do_rbutton_lbutton_down:
  gosub count_pre
  switch count
  {
    case 1:
    {
      gosub move_window_pre
      gosub ctrl_lbutton
    }
    case 2:
    {
      gosub move_window_pre
      switch direction
      {
        case "up":
        {
          gosub nvim_shift_f12
        }
        case "right":
        {
          gosub nvim_f12
        }
        case "down":
        {
          gosub nvim_alt_f12
        }
        case "left":
        {
          gosub nvim_ctrl_f12
        }
      }
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
