do_rbutton_wheel_up:
  switch direction
  {
    case "down":
    {
      switch count
      {
        case 1:
        {
          gosub transparency_up
        }
      }
    }
    case "up":
    {
      switch count
      {
        case 1:
        {
          gosub volume_up
        }
        case 4:
        {
          gosub always_show_msg_change_up
        }
      }
    }
    case "center":
    {
      switch count
      {
        case 1:
        {
          gosub shift_wheel_up
        }
      }
    }
    case "right":
    {
      switch count
      {
        case 1:
        {
          gosub pgup
        }
        case 2:
        {
          gosub pgup_40
        }
        case 3:
        {
          gosub move_window_leftmargin_up
        }
        case 4:
        {
          gosub move_window_leftmargin_step_up
        }
      }
    }
    case "right_up":
    {
      switch count
      {
        case 4:
        {
          gosub mstsc_enable
        }
      }
    }
    case "right_down":
    {
      switch count
      {
        case 1:
        {
          gosub ctrl_win_left
        }
      }
    }
    case "left_up":
    {
      switch count
      {
        case 1:
        {
          gosub navigate_forward
          gosub bcompare_ctrl_p
        }
      }
    }
    case "left":
    {
      switch count
      {
        case 1:
        {
          gosub up
        }
        case 2:
        {
          gosub ctrl_home
        }
      }
    }
  }
return
