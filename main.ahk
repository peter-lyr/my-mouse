; globalMouse
global_mouse_en := 1
remove_tooltip_en := 0
count := 1
count_canceled := 0
count_ready := 0
count_fix_change_ready := 0
count_fix := 1 ; 1,3,5,7,...
count_max := 4 ; 2,4,6,8,...
direction := ""


#MaxHotkeysPerInterval 1000


gosub circle_init
gosub msg_init
gosub mstsc_init
settimer, mstsc_watcher, 50
settimer, explorer_watcher, 50
settimer, neovim_watcher, 50


; keyboard
neovim_keyboard_en := 0
explorer_keyboard_en := 0
gosub keyboard_init


; _
#Include %A_ScriptDir%\_\macro.ahk


#Include %A_ScriptDir%\globalMouse\globalMouse.ahk
#include %a_scriptdir%\globalmouse\_\_rbutton_.ahk
#include %a_scriptdir%\globalmouse\_\_mark_rbutton_.ahk
#include %a_scriptdir%\globalmouse\_\_start.ahk
#include %a_scriptdir%\globalmouse\_\_end.ahk
#include %a_scriptdir%\globalmouse\_\_circle.ahk
#include %a_scriptdir%\globalmouse\_\_is_.ahk
#include %a_scriptdir%\globalmouse\_\_direction.ahk
#include %a_scriptdir%\globalmouse\_\_msg.ahk
#include %a_scriptdir%\globalmouse\_\_mstsc.ahk
#include %a_scriptdir%\globalmouse\_\_tray.ahk
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
#include %a_scriptdir%\globalmouse\do\ctrl_home_end.ahk
#include %a_scriptdir%\globalmouse\do\ctrl_win_left_right.ahk
#include %a_scriptdir%\globalmouse\do\esc.ahk
#include %a_scriptdir%\globalmouse\do\alt_f4.ahk
#include %a_scriptdir%\globalmouse\do\ctrl_alt_tab.ahk
#include %a_scriptdir%\globalmouse\do\often_window.ahk
#include %a_scriptdir%\globalmouse\do\explorer\navigate.ahk
#include %a_scriptdir%\globalmouse\dt\bcompare\ctrl_np.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_f12.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_alt_f12.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_f12.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_shift_f12.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f1.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f2.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f3.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f4.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f5.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f6.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f7.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f8.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f9.ahk
#include %a_scriptdir%\globalmouse\dt\nvim-qt\nvim_ctrl_shift_f12_f10.ahk
#include %a_scriptdir%\globalmouse\dt\explorer\restart.ahk
#include %a_scriptdir%\globalmouse\dt\f\f1.ahk
#include %a_scriptdir%\globalmouse\dt\f\f2.ahk
#include %a_scriptdir%\globalmouse\dt\f\f3.ahk
#include %a_scriptdir%\globalmouse\dt\f\f4.ahk
#include %a_scriptdir%\globalmouse\dt\f\f5.ahk
#include %a_scriptdir%\globalmouse\dt\f\f6.ahk
#include %a_scriptdir%\globalmouse\dt\f\f7.ahk
#include %a_scriptdir%\globalmouse\dt\f\f8.ahk
#include %a_scriptdir%\globalmouse\dt\f\f9.ahk
#include %a_scriptdir%\globalmouse\dt\f\f10.ahk
#include %a_scriptdir%\globalmouse\dt\f\f11.ahk
#include %a_scriptdir%\globalmouse\dt\f\f12.ahk
#include %a_scriptdir%\globalmouse\dt\ctrl_c.ahk
#include %a_scriptdir%\globalmouse\dt\ctrl_lbutton.ahk
#include %a_scriptdir%\globalmouse\dt\ctrl_rbutton.ahk
#include %a_scriptdir%\globalmouse\dt\ctrl_v.ahk
#include %a_scriptdir%\globalmouse\dt\up.ahk
#include %a_scriptdir%\globalmouse\dt\down.ahk
#include %a_scriptdir%\globalmouse\dt\task_kill.ahk


#Include %A_ScriptDir%\keyboard\window.ahk
#include %a_scriptdir%\keyboard\keyboard_toggle.ahk
#include %a_scriptdir%\keyboard\keyboard_init.ahk
#include %a_scriptdir%\keyboard\check_explorer.ahk
#include %a_scriptdir%\keyboard\check_neovim.ahk
#include %a_scriptdir%\keyboard\alt_left_right_up.ahk
#include %a_scriptdir%\keyboard\cursor_arrow.ahk
#include %a_scriptdir%\keyboard\cursor_arrow_ctrl.ahk
#include %a_scriptdir%\keyboard\cursor_arrow_shift.ahk
#include %a_scriptdir%\keyboard\cursor_arrow_ctrl_shift.ahk


#Include %A_ScriptDir%\test\test.ahk
