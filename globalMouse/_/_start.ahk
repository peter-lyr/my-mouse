global_mouse_watcher:
  if (is_rbutton_up())
  {
    settimer, global_mouse_watcher, off
  }
  gosub count_lbutton_do
  gosub global_mouse_direction
  gosub global_mouse_actions
return

global_mouse_var_window:
  mousegetpos, global_mouse_x, global_mouse_y, global_mouse_id
  wingettitle, global_mouse_title, ahk_id %global_mouse_id%
  winget, global_mouse_processname, processname, ahk_id %global_mouse_id%
  global_mouse_title := trim(global_mouse_title)
  global_mouse_processname := trim(global_mouse_processname)
return

global_mouse_var_mark:
  flag_rbutton_up := 0
  flag_rbutton_up_canceled := 0
  flag_rbutton_wheel_done := 0
  flag_rbutton_wheel_down := 0
  flag_rbutton_wheel_up := 0
  flag_rbutton_lbutton_done := 0
  flag_rbutton_lbutton_down := 0
  flag_rbutton_lbutton_up := 0
  flag_rbutton_mbutton_done := 0
  flag_rbutton_mbutton_down := 0
  flag_rbutton_mbutton_up := 0
return

global_mouse_var_count:
  count := count_fix
  count_canceled := 0
  count_ready := 0
  count_fix_change_ready := 0
return

global_mouse_var_end:
  remove_tooltip_en := 0
return

global_mouse_var:
  gosub global_mouse_var_window
  gosub global_mouse_var_mark
  gosub global_mouse_var_end
  gosub global_mouse_var_count
return

global_mouse_start:
  if (is_rbutton_up())
  {
    return
  }
  gosub circle_draw
  gosub global_mouse_var
  settimer, global_mouse_watcher, 10
  gosub count_rbutton_do
  gosub count_rbutton_pre
  gosub count_lbutton_pre
return
