; tray_info:
;   wingetpos, tray_x, tray_y, tray_width, tray_height, ahk_class Shell_TrayWnd
;   if (tray_x != 0 or tray_y != 0)
;   {
;     origin_x := 0
;     origin_y := 0
;     if (tray_height == A_ScreenHeight)
;     {
;       real_height := A_ScreenHeight
;       real_width := A_ScreenWidth - tray_width
;     } else if (tray_width == A_ScreenWidth)
;     {
;       real_width := A_ScreenWidth
;       real_height := A_ScreenHeight - tray_height
;     }
;   } else if (tray_height == A_ScreenHeight)
;   {
;     origin_y := 0
;     origin_x := tray_width
;     real_height := A_ScreenHeight
;     real_width := A_ScreenWidth - tray_width
;   } else if (tray_width == A_ScreenWidth)
;   {
;     origin_x := 0
;     origin_y := tray_height
;     real_width := A_ScreenWidth
;     real_height := A_ScreenHeight - tray_height
;   }
; return

monitor_info:
  sysget, monitorcount, monitorcount
  mousegetpos, _temp_x, _temp_y
  loop, %monitorcount%
  {
    sysget, monitor, monitor, %a_index%
    if (_temp_x >= monitorleft and _temp_x <= monitorright and _temp_y >= monitortop and _temp_y <= monitorbottom)
    {
      sysget, monitorworkarea, monitorworkarea, %a_index%
      origin_x := monitorworkarealeft
      origin_y := monitorworkareatop
      real_width := monitorworkarearight - monitorworkarealeft
      real_height := monitorworkareabottom - monitorworkareatop
      if (monitorworkarealeft == 0)
      {
        origin_x := leftmargin
        real_width := monitorworkarearight - monitorworkarealeft - leftmargin
      }
      t := format("({:d}, {:d}), ({:d}, {:d})", origin_x, origin_y, real_width, real_height)
      ; msgbox %t%
    }
  }
return

monitor_info_2:
  sysget, monitorcount, monitorcount
  mousegetpos, _temp_x, _temp_y
  offset := leftmargin
  loop, %monitorcount%
  {
    sysget, monitor, monitor, %a_index%
    if (_temp_x >= monitorleft + offset and _temp_x <= monitorright - offset)
    {
      sysget, monitorworkarea, monitorworkarea, %a_index%
      origin_x := monitorworkarealeft
      origin_y := monitorworkareatop
      real_width := monitorworkarearight - monitorworkarealeft
      real_height := monitorworkareabottom - monitorworkareatop
      if (monitorworkarealeft == 0)
      {
        origin_x := leftmargin
        real_width := monitorworkarearight - monitorworkarealeft - leftmargin
      }
      t := format("({:d}, {:d}), ({:d}, {:d})", origin_x, origin_y, real_width, real_height)
      ; msgbox %t%
    }
  }
return
