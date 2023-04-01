do_rbutton_wheel_down:
  switch direction
  {
    case "down":
    {
      switch count
      {
        case 1:
        {
          gosub transparency_down
        }
      }
    }
    case "up":
    {
      switch count
      {
        case 1:
        {
          gosub volume_down
        }
      }
    }
    case "center":
    {
      switch count
      {
        case 1:
        {
          gosub shift_wheel_down
        }
      }
    }
    case "right":
    {
      switch count
      {
        case 1:
        {
          gosub pgdn
        }
        case 2:
        {
          gosub pgdn_40
        }
      }
    }
    case "right_down":
    {
      switch count
      {
        case 1:
        {
          gosub ctrl_win_right
        }
      }
    }
    case "left_up":
    {
      switch count
      {
        case 1:
        {
          gosub navigate_backward
          gosub bcompare_ctrl_n
        }
      }
    }
    case "left":
    {
      switch count
      {
        case 1:
        {
          gosub ctrl_end
        }
      }
    }
  }
return
