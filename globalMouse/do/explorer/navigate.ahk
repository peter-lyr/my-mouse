navigate_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("返回上一级目录")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
    {
      send, {alt down}{up}
      send, {alt up}
    }
  }
return

navigate_backward:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("回退")
      }
    }
  } else
  {
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
    {
      send, {alt down}{left}
      send, {alt up}
    }
  }
return

navigate_forward:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("前进")
      }
    }
  } else
  {
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
    {
      send, {alt down}{right}
      send, {alt up}
    }
  }
return
