_rbutton_down:
  gosub global_mouse_start
return

_rbutton_up:
  gosub _mark_rbutton_up
  gosub global_mouse_end
return

_rbutton_wheel_down:
  gosub _mark_rbutton_wheel_down
return

_rbutton_wheel_up:
  gosub _mark_rbutton_wheel_up
return

_rbutton_lbutton_down:
  gosub _mark_rbutton_lbutton_down
  gosub move_window
return

_rbutton_lbutton_up:
  gosub _mark_rbutton_lbutton_up
return

_rbutton_mbutton_down:
  gosub _mark_rbutton_mbutton_down
return

_rbutton_mbutton_up:
  gosub _mark_rbutton_mbutton_up
return
