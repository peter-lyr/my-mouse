do_rbutton_lbutton_down:
  gosub count_pre
  switch count
  {
    case 1:
    {
      gosub move_window_start
    }
    case 2:
    {
      gosub move_window_start
    }
  }
return
