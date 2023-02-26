global_mouse_var:
  mousegetpos, global_mouse_x, global_mouse_y, global_mouse_id
  wingettitle, global_mouse_title, ahk_id %global_mouse_id%
  winget, global_mouse_processname, processname, ahk_id %global_mouse_id%
  global_mouse_title := trim(global_mouse_title)
  global_mouse_processname := trim(global_mouse_processname)
  msg := format("({:d}, {:d}) - {:s}", global_mouse_x, global_mouse_y, global_mouse_processname)
  tooltip %msg%
return

global_mouse_start:
  if (is_rbutton_up())
  {
    return
  }
  gosub circle_draw
  gosub global_mouse_var
return
