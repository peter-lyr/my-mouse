do_rbutton_up:
  switch direction
  {
    case "center":
    {
      switch count
      {
        case 1:
        {
          gosub click_right
        }
        case 3:
        {
          gosub click_right
        }
        case 2:
        {
          gosub activate_window
        }
        case 4:
        {
          gosub activate_window
        }
      }
    }
    case "right_up":
    {
      switch count
      {
        case 1:
        {
          gosub maximize_restore_window
        }
      }
    }
    case "right":
    {
      switch count
      {
        case 1:
        {
          gosub alt_tab
        }
        case 2:
        {
          gosub esc
        }
      }
    }
    case "down":
    {
      switch count
      {
        case 1:
        {
          gosub transparency_toggle
        }
      }
    }
    case "up":
    {
      switch count
      {
        case 1:
        {
          gosub topmost_toggle
        }
      }
    }
    case "left":
    {
      switch count
      {
        case 1:
        {
          gosub ctrl_alt_tab
        }
        case 2:
        {
          gosub win_tab
        }
      }
    }
    case "right_down":
    {
      switch count
      {
        case 1:
        {
          gosub minimize_window
        }
      }
    }
    case "left_up":
    {
      switch count
      {
        case 1:
        {
          gosub navigate_up
        }
      }
    }
  }
return
