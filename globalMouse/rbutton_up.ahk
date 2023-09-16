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
          gosub nvim_telescope_git_status
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
        case 2:
        {
          ; gosub nvim_telescope_jumplist
          gosub nvim_telescope_ui_all
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
        case 2:
        {
          ; gosub nvim_telescope_find_files
          gosub nvim_telescope_file_browser
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
          gosub nvim_telescope_buffers
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
        case 2: ; nvim
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
          gosub often_window_activate
        }
        case 2:
        {
          gosub often_window_new
        }
      }
    }
  }
return
