move_window_watcher:
  setwindelay, 0
  gosub monitor_info_2
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
  if (count_canceled == 1)
  {
    if (WinActive("ahk_id " . move_window_id) == 0)
    {
      winactivate, ahk_id %move_window_id%
    }
    gosub circle_hide
  }
  mousegetpos, _x2, _y2
  coordmode, mouse, screen
  wingetpos, _x, _y, _w, _h, ahk_id %move_window_id%
  x_new := _x + _x2 - _x1
  y_new := _y + _y2 - _y1
  w_new := _w
  h_new := _h
  if (x_new < origin_x)
  {
    x_new := origin_x
  } else if (x_new + _w > real_width + origin_x)
  {
    x_new := real_width + origin_x - _w
  }
  if (y_new < origin_y)
  {
    y_new := origin_y
  } else if (y_new + _h > real_height + origin_y)
  {
    y_new := real_height + origin_y - _h
  }
  if (h_new > real_height)
  {
    h_new := real_height
  }
  if (w_new > real_width)
  {
    w_new := real_width
  }
  winmove, ahk_id %move_window_id%, , x_new, y_new, w_new, h_new
  _x1 := _x2
  _y1 := _y2
return

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
  if (count_canceled == 1)
  {
    gosub circle_hide
  }
  mousegetpos, _x2, _y2
  coordmode, mouse, screen
  wingetpos, _x, _y, , , ahk_id %move_window_id%
  winmove, ahk_id %move_window_id%, , _x + _x2 - _x1, _y + _y2 - _y1
  _x1 := _x2
  _y1 := _y2
return

move_window_do1:
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
  gosub monitor_info
  settimer, move_window_watcher, 10
return

move_window_do2:
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
  settimer, move_window_watcher2, 10
return

move_window:
  if (leftmargin <= 0)
  {
    gosub move_window_init
  }
  if (flag_win_move_resize_en) {
    flag_win_move_resize_en := 2
    move_window_en := 1
    if (count < 3)
    {
      if (count == 1)
      {
        gosub move_window_do1
      } else
      {
        gosub move_window_do2
      }
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
        push_msg_action("move win")
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
        push_msg_action(format("sure win pos({:s})", move_window_processname))
        push_msg(format("release rbutton: cancel win pos({:s})", move_window_processname))
      }
    }
  } else
  {
  }
return

move_window_init:
  iniread, leftmargin, main.ini, movewindow, leftmargin
  if (leftmargin == "ERROR")
  {
    leftmargin := 80
    iniwrite %leftmargin%, main.ini, movewindow, leftmargin
  }
  iniread, leftmarginstep, main.ini, movewindow, leftmarginstep
  if (leftmarginstep == "ERROR")
  {
    leftmarginstep := 80
    iniwrite %leftmarginstep%, main.ini, movewindow, leftmarginstep
  }
  iniread, leftmarginmax, main.ini, movewindow, leftmarginmax
  if (leftmarginmax == "ERROR")
  {
    leftmarginmax := 800
    iniwrite %leftmarginmax%, main.ini, movewindow, leftmarginmax
  }
return

move_window_leftmargin_up:
  if (action_before)
  {
    _leftmargin := leftmargin + 80
    if (_leftmargin > leftmarginmax)
    {
      _leftmargin := leftmarginmax
    }
    push_msg_action(format("leftmargin: {:d}->{:d}", leftmargin, _leftmargin))
    always_show_msg_changing := 1
  } else
  {
    leftmargin := leftmargin + 80
    if (leftmargin > leftmarginmax)
    {
      leftmargin := leftmarginmax
    }
  }
return

move_window_leftmargin_down:
  if (action_before)
  {
    _leftmargin := leftmargin - 80
    if (_leftmargin < 0)
    {
      _leftmargin := 0
    }
    push_msg_action(format("leftmargin: {:d}->{:d}", leftmargin, _leftmargin))
    always_show_msg_changing := 1
  } else
  {
    leftmargin := leftmargin - 80
    if (leftmargin < 0)
    {
      leftmargin := 0
    }
  }
return

