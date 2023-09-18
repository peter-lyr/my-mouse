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
          gosub nvim_telescope_buffers_cur
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
          gosub nvim_telescope_lsp_document_symbols
        }
        case 2:
        {
          gosub nvim_telescope_ui_all
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
          gosub nvim_telescope_jumplist
        }
        case 2:
        {
          gosub nvim_telescope_file_browser
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
          gosub nvim_telescope_file_browser_cur
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
          gosub nvim_telescope_find_files
        }
        case 2:
        {
          gosub nvim_telescope_frecency
        }
      }
    }
  }
return
