circle_var:
  iniread, circle_size, main.ini, circle, size
  iniread, circle_color, main.ini, circle, color
  iniread, circle_transparency, main.ini, circle, transparency
  if (circle_size == "ERROR")
  {
    circle_size := 100
    iniwrite %circle_size%, main.ini, circle, size
  }
  if (circle_color == "ERROR")
  {
    circle_color := "red"
    iniwrite %circle_color%, main.ini, circle, color
  }
  if (circle_transparency == "ERROR")
  {
    circle_transparency := 50
    iniwrite %circle_transparency%, main.ini, circle, transparency
  }
return

circle_init:
  gosub circle_var
  coordmode, mouse, screen
  detecthiddenwindows, on
  gui, -caption +toolwindow +alwaysontop +lastfound
  _circle_id := winexist()
  winset, transparent, %circle_transparency%, ahk_id %_circle_id%
  winset, region, % "0-0 w" circle_size " h" circle_size " e", ahk_id %_circle_id%
  winset, exstyle, +0x20, ahk_id %_circle_id%
  gui, color, %circle_color%
  gui, show, w8000 h8000 hide
return

circle_draw_1s:
  _x := round(_mouse_x - circle_size/2)
  _y := round(_mouse_y - circle_size/2)
  gui, show, x%_x% y%_y% na
return

circle_draw:
  mousegetpos, _mouse_x, _mouse_y
  _x := round(_mouse_x - circle_size/2)
  _y := round(_mouse_y - circle_size/2)
  gui, show, x%_x% y%_y% na
  settimer, circle_draw_1s, 1000
return

circle_hide:
  gui, hide
  settimer, circle_draw_1s, off
return
