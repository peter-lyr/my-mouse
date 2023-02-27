do_rbutton_lbutton_up:
  gosub count_do
  switch count
  {
    case 1:
    {
      gosub move_window_do
    }
    case 2:
    {
      gosub move_window_do
    }
    case 3:
    {
      gosub win_up
    }
    case 4:
    {
      gosub esc_do
    }
  }
return
