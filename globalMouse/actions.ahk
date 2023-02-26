global_mouse_actions:
  mousegetpos, _x, _y
  _str := "{:s} - [{:d}/{:d}]"
  msg := format(_str, global_mouse_processname, count, count_fix)
  if (direction != "center")
  {
    count_canceled := 1
  }
  action_before := 0
  if (flag_rbutton_up == 1)
  {
    if (flag_rbutton_up_canceled == 0)
    {
      action_name := "松开右键"
      gosub do_rbutton_up
    } else if (flag_rbutton_wheel_done == 1)
    {
      msg := ""
    }
  } else if (flag_rbutton_wheel_down == 1)
  {
    flag_rbutton_wheel_down := 0
    if (is_lbutton_up() and is_mbutton_up())
    {
      action_name := "向下滚轮"
      gosub do_rbutton_wheel_down
    }
  } else if (flag_rbutton_wheel_up == 1)
  {
    flag_rbutton_wheel_up := 0
    if (is_lbutton_up() and is_mbutton_up())
    {
      action_name := "向上滚轮"
      gosub do_rbutton_wheel_up
    }
  } else if (flag_rbutton_lbutton_down == 1)
  {
    flag_rbutton_lbutton_down := 0
    if (is_mbutton_up())
    {
      action_name := "按下左键"
      gosub do_rbutton_lbutton_down
    }
  } else if (flag_rbutton_lbutton_up == 1)
  {
    flag_rbutton_lbutton_up := 0
    if (is_mbutton_up())
    {
      action_name := "抬起左键"
      gosub do_rbutton_lbutton_up
    }
  } else if (flag_rbutton_mbutton_down == 1)
  {
    flag_rbutton_mbutton_down := 0
    if (is_lbutton_up())
    {
      action_name := "按下中键"
      gosub do_rbutton_mbutton_down
    }
  } else if (flag_rbutton_mbutton_up == 1)
  {
    flag_rbutton_mbutton_up := 0
    if (is_lbutton_up())
    {
      action_name := "抬起中键"
      gosub do_rbutton_mbutton_up
    }
  }
  if (remove_tooltip_en)
  {
    return
  }
  action_before := 1
  if (flag_rbutton_up_canceled == 0)
  {
    action_name := "松开右键"
    gosub do_rbutton_up
  }
  if (is_lbutton_up() and is_mbutton_up())
  {
    action_name := "向下滚轮"
    gosub do_rbutton_wheel_down
    action_name := "向上滚轮"
    gosub do_rbutton_wheel_up
  }
  if (is_mbutton_up())
  {
    if (is_lbutton_up())
    {
      action_name := "按下左键"
      gosub do_rbutton_lbutton_down
    } else
    {
      action_name := "抬起左键"
      gosub do_rbutton_lbutton_up
    }
  }
  if (is_lbutton_up())
  {
    if (is_mbutton_up())
    {
      action_name := "按下中键"
      gosub do_rbutton_mbutton_down
    } else
    {
      action_name := "抬起中键"
      gosub do_rbutton_mbutton_up
    }
  }
  tooltip %msg%
return
