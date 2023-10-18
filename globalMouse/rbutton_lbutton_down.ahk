do_rbutton_lbutton_down:
  gosub count_pre
    push_msg_action(format("_x: {:d}, _y: {:d}, monitorright: {:d}, monitorleft: {:d}, monitorbottom: {:d}, monitortop: {:d}, ", _x, _y, monitorright, monitorleft, monitorbottom, monitortop))
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
        case "left_up":
        {
          gosub nvim_ctrl_f11
        }
        case "right_up":
        {
          gosub nvim_shift_f11
        }
      }
    }
    case 3:
    {
      switch direction
      {
        case "up":
        {
        }
      }
    }
  }
return
