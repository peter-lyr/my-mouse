#if global_mouse_en
rbutton::
  gosub _rbutton_down
return

#if global_mouse_en
rbutton up::
  gosub _rbutton_up
return


#if global_mouse_en
~rbutton & wheeldown::
  gosub _rbutton_wheel_down
return

#if global_mouse_en
~rbutton & wheelup::
  gosub _rbutton_wheel_up
return


#if global_mouse_en
~rbutton & lbutton::
  gosub _rbutton_lbutton_down
return

#if global_mouse_en
~rbutton & lbutton up::
  gosub _rbutton_lbutton_up
return


#if global_mouse_en
~rbutton & mbutton::
  gosub _rbutton_mbutton_down
return

#if global_mouse_en
~rbutton & mbutton up::
  gosub _rbutton_mbutton_up
return
