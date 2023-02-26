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
  wingetpos, _x, _y, , , ahk_id %move_window_id%
  coordmode, mouse, screen
  winmove, ahk_id %move_window_id%, , _x + _x2 - _x1, _y + _y2 - _y1
  _x1 := _x2
  _y1 := _y2
return

move_window_do:
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
  wingetpos, move_window_ori_x, move_window_ori_y, , , ahk_id %move_window_id%
  settimer, move_window_watcher, 10
return

move_window:
  if (count < 3)
  {
    gosub move_window_do
    if (count == 2)
    {
      winactivate, ahk_id %move_window_id%
    }
  }
return

move_window_start:
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

move_window_end:
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
