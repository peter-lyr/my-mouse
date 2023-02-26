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
      }
    }
  }
return
