global_mouse_en := 1

remove_tooltip_en := 0

count := 1
count_canceled := 0
count_ready := 0
count_fix_change_ready := 0
count_fix := 1 ; 1,3,5,7,...
count_max := 4 ; 2,4,6,8,...

direction := ""

gosub circle_init
gosub msg_init
settimer, mstsc_watcher, 50

#include %a_scriptdir%\globalmouse\_\_rbutton_.ahk
#include %a_scriptdir%\globalmouse\_\_mark_rbutton_.ahk
#include %a_scriptdir%\globalmouse\_\_start.ahk
#include %a_scriptdir%\globalmouse\_\_end.ahk
#include %a_scriptdir%\globalmouse\_\_circle.ahk
#include %a_scriptdir%\globalmouse\_\_is_.ahk
#include %a_scriptdir%\globalmouse\_\_direction.ahk
#include %a_scriptdir%\globalmouse\_\_msg.ahk
#include %a_scriptdir%\globalmouse\_\_mstsc.ahk
#include %a_scriptdir%\globalmouse\actions.ahk
#include %a_scriptdir%\globalmouse\rbutton_up.ahk
#include %a_scriptdir%\globalmouse\rbutton_lbutton_down.ahk
#include %a_scriptdir%\globalmouse\rbutton_lbutton_up.ahk
#include %a_scriptdir%\globalmouse\rbutton_mbutton_down.ahk
#include %a_scriptdir%\globalmouse\rbutton_mbutton_up.ahk
#include %a_scriptdir%\globalmouse\rbutton_wheel_down.ahk
#include %a_scriptdir%\globalmouse\rbutton_wheel_up.ahk
#include %a_scriptdir%\globalmouse\do\count.ahk
#include %a_scriptdir%\globalmouse\do\click_right.ahk
#include %a_scriptdir%\globalmouse\do\activate_window.ahk
#include %a_scriptdir%\globalmouse\do\move_window.ahk
#include %a_scriptdir%\globalmouse\do\resize_window.ahk
#include %a_scriptdir%\globalmouse\do\maximize_restore_window.ahk
#include %a_scriptdir%\globalmouse\do\alt_tab.ahk
#include %a_scriptdir%\globalmouse\do\transparency.ahk
#include %a_scriptdir%\globalmouse\do\topmost.ahk
#include %a_scriptdir%\globalmouse\do\win_tab.ahk
#include %a_scriptdir%\globalmouse\do\minimize_window.ahk
#include %a_scriptdir%\globalmouse\do\volume.ahk
#include %a_scriptdir%\globalmouse\do\shift_wheel.ahk
#include %a_scriptdir%\globalmouse\do\pg_updn.ahk
#include %a_scriptdir%\globalmouse\do\pg_updn_40.ahk
#include %a_scriptdir%\globalmouse\do\ctrl_win_left_right.ahk
#include %a_scriptdir%\globalmouse\do\win_comma.ahk
#include %a_scriptdir%\globalmouse\do\esc.ahk
#include %a_scriptdir%\globalmouse\do\ctrl_alt_tab.ahk
#include %a_scriptdir%\globalmouse\do\often_window.ahk
#include %a_scriptdir%\globalmouse\do\explorer\navigate.ahk

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
