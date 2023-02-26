resize_window_do:
  setwindelay, 0
  coordmode, mouse, screen
  mousegetpos, resize_window_x1, resize_window_y1, resize_window_id
  winget, _minmax_status, minmax, ahk_id %resize_window_id%
  wingettitle, resize_window_title, ahk_id %resize_window_id%
  winget, resize_window_processname, processname, ahk_id %resize_window_id%
  resize_window_en := 1
  if (_minmax_status or is_desktop(resize_window_title) or is_lbutton_up() == 0)
  {
    resize_window_en := 0
    return
  }
  wingetpos, resize_window_current_x, resize_window_current_y, resize_window_current_w, resize_window_current_h, ahk_id %resize_window_id%
  wingetpos, resize_window_ori_x, resize_window_ori_y, resize_window_ori_w, resize_window_ori_h, ahk_id %resize_window_id%
  _y1 := resize_window_current_h * (resize_window_x1 - resize_window_current_x) / resize_window_current_w + resize_window_current_y
  _y2 := resize_window_current_h * (resize_window_current_x - resize_window_x1) / resize_window_current_w + resize_window_current_y + resize_window_current_h
  if (resize_window_x1 < resize_window_current_x + resize_window_current_w / 3 or ((resize_window_y1 > _y1) and (resize_window_y1 < _y2)))
  {
    _winleft := 1
    _winwidth := 1
    resize_window_dx := 1
  } else if (resize_window_x1 > resize_window_current_x + resize_window_current_w * 2 / 3 or ((resize_window_y1 < _y1) and (resize_window_y1 > _y2)))
  {
    _winleft := -1
    _winwidth := 1
    resize_window_dx := 0
  } else
  {
    _winleft := 0
    _winwidth := 0
    resize_window_dx := 0
  }
  if (resize_window_y1 < resize_window_current_y + resize_window_current_h / 3 or ((resize_window_y1 < _y1) and (resize_window_y1 < _y2)))
  {
    _winup := 1
    _winheight := 1
    resize_window_dy := 1
  } else if (resize_window_y1 > resize_window_current_y + resize_window_current_h * 2 / 3 or ((resize_window_y1 > _y1) and (resize_window_y1 > _y2)))
  {
    _winup := -1
    _winheight := 1
    resize_window_dy := 0
  } else
  {
    _winup := 0
    _winheight := 0
    resize_window_dy := 0
  }
  loop {
    if (is_rbutton_up() == 1)
    {
      winmove, ahk_id %resize_window_id%, , resize_window_ori_x, resize_window_ori_y, resize_window_ori_w, resize_window_ori_h
      break
    }
    if (is_mbutton_up() == 1)
    {
      break
    }
    mousegetpos, resize_window_x2, resize_window_y2
    wingetpos, resize_window_current_x, resize_window_current_y, resize_window_current_w, resize_window_current_h, ahk_id %resize_window_id%
    resize_window_x2 -= resize_window_x1
    resize_window_y2 -= resize_window_y1
    resize_window_new_x := resize_window_current_x + resize_window_x2 * resize_window_dx
    resize_window_new_y := resize_window_current_y + resize_window_y2 * resize_window_dy
    resize_window_new_w := resize_window_current_w  - resize_window_x2 * _winleft * _winwidth
    resize_window_new_h := resize_window_current_h  - resize_window_y2 * _winup  * _winheight
    winmove, ahk_id %resize_window_id%, , resize_window_new_x , resize_window_new_y , resize_window_new_w , resize_window_new_h
    resize_window_x1 := (resize_window_x2 + resize_window_x1)
    resize_window_y1 := (resize_window_y2 + resize_window_y1)
  }
return

resize_window:
  if (count < 3)
  {
    gosub resize_window_do
    if (count == 2)
    {
      winactivate, ahk_id %resize_window_id%
    }
  }
return

resize_window_start:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (resize_window_en)
      {
        push_msg_action("改变窗口大小")
      }
    }
  } else
  {
  }
return

resize_window_end:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (resize_window_en)
      {
        push_msg_action(format("确定窗口大小({:s})", resize_window_processname))
        push_msg(format("松开右键: 撤销窗口大小改变({:s})", resize_window_processname))
      }
    }
  } else
  {
  }
return
