do_rbutton_lbutton_up:
  gosub count_do
  switch count
  {
    case 1:
    {
      gosub move_window_end
    }
    case 2:
    {
      gosub move_window_end
    }
    case 3:
    {
      gosub win_up
    }
  }
return
