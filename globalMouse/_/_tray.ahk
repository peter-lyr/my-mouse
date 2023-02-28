tray_info:
  wingetpos, tray_x, tray_y, tray_width, tray_height, ahk_class Shell_TrayWnd
  if (tray_x != 0 or tray_y != 0)
  {
    origin_x := 0
    origin_y := 0
    if (tray_height == A_ScreenHeight)
    {
      real_height := A_ScreenHeight
      real_width := A_ScreenWidth - tray_width
    } else if (tray_width == A_ScreenWidth)
    {
      real_width := A_ScreenWidth
      real_height := A_ScreenHeight - tray_height
    }
  } else if (tray_height == A_ScreenHeight)
  {
    origin_y := 0
    origin_x := tray_width
    real_height := A_ScreenHeight
    real_width := A_ScreenWidth - tray_width
  } else if (tray_width == A_ScreenWidth)
  {
    origin_x := 0
    origin_y := tray_height
    real_width := A_ScreenWidth
    real_height := A_ScreenHeight - tray_height
  }
return
