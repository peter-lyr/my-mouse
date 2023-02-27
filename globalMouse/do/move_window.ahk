
move_window_watcher2:
  setwindelay, 0
  if (is_rbutton_up())
  {
    settimer, move_window_watcher2, off
    coordmode, mouse, screen
    winmove, ahk_id %move_window_id%, , %move_window_ori_x%, %move_window_ori_y%
    tooltip
    return
  }
  if (is_lbutton_up())
  {
    settimer, move_window_watcher2, off
    return
  }
  mousegetpos, _x2, _y2
  coordmode, mouse, screen
  wingetpos, _x, _y, , , ahk_id %move_window_id%
  x_new := _x + _x2 - _x1
  y_new := _y + _y2 - _y1
  if (x_new < -offset)
  {
    x_new := -offset
  } else if (x_new + move_window_w > A_ScreenWidth + offset)
  {
    x_new := A_ScreenWidth - move_window_w + offset
  }
  if (y_new < -offset)
  {
    y_new := -offset
  } else if (y_new + move_window_h > A_ScreenHeight + offset)
  {
    y_new := A_ScreenHeight - move_window_h + offset
  }
  winmove, ahk_id %move_window_id%, , x_new, y_new
  _x1 := _x2
  _y1 := _y2
return

move_window_watcher:
  setwindelay, 0
  if (is_rbutton_up())
  {
    settimer, move_window_watcher, off
    coordmode, mouse, screen
    winmove, ahk_id %move_window_id%, , %move_window_ori_x%, %move_window_ori_y%
    tooltip
    return
  }
  if (is_lbutton_up())
  {
    settimer, move_window_watcher, off
    return
  }
  mousegetpos, _x2, _y2
  coordmode, mouse, screen
  wingetpos, _x, _y, , , ahk_id %move_window_id%
  winmove, ahk_id %move_window_id%, , _x + _x2 - _x1, _y + _y2 - _y1
  _x1 := _x2
  _y1 := _y2
return

move_window_ado:
  mousegetpos, _x1, _y1, move_window_id
  winget, _minmax_status, minmax, ahk_id %move_window_id%
  wingettitle, move_window_title, ahk_id %move_window_id%
  winget, move_window_processname, processname, ahk_id %move_window_id%
  move_window_en := 1
  if (_minmax_status or is_desktop(move_window_title) or is_mbutton_up() == 0)
  {
    move_window_en := 0
    return
  }
  wingetpos, move_window_ori_x, move_window_ori_y, move_window_w, move_window_h, ahk_id %move_window_id%
  wingetpos, tray_x, tray_y, tray_width, tray_height, ahk_class Shell_TrayWnd
  offset := min(tray_width, tray_height) / 5
  settimer, move_window_watcher2, 10
return

move_window:
  if (count < 3)
  {
    gosub move_window_ado
    if (count == 2)
    {
      winactivate, ahk_id %move_window_id%
    }
  }
return

move_window_pre:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (move_window_en)
      {
        push_msg_action("移动窗口")
      }
    }
  } else
  {
  }
return

move_window_do:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (move_window_en)
      {
        push_msg_action(format("确定窗口位置({:s})", move_window_processname))
        push_msg(format("松开右键: 撤销窗口移动({:s})", move_window_processname))
      }
    }
  } else
  {
  }
return
