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
        case 2:
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
        case 2:
        {
          gosub ctrl_c
          gosub nvim_ctrl_shift_f12_f2
        }
      }
    }
    case "right":
    {
      switch count
      {
        case 1:
        {
          gosub nvim_ctrl_shift_f12_f6
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
          gosub nvim_ctrl_shift_f12_f6
        }
        case 2:
        {
          gosub nvim_ctrl_shift_f12_f10
        }
        case 4:
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
          gosub nvim_ctrl_shift_f12_f6
        }
        case 2:
        {
          gosub nvim_ctrl_shift_f12_f6
        }
        case 4:
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
        case 2:
        {
          gosub ctrl_v
          gosub nvim_ctrl_shift_f12_f6
        }
      }
    }
    case "left_up":
    {
      switch count
      {
        case 1:
        {
          gosub nvim_ctrl_shift_f12_f9
          gosub navigate_up
        }
        case 2:
        {
          gosub nvim_f11
        }
      }
    }
    case "left_down":
    {
      switch count
      {
        case 1:
        {
          gosub nvim_ctrl_shift_f12_f4
        }
        case 2:
        {
          gosub nvim_ctrl_shift_f12_f5
        }
      }
    }
  }
return
