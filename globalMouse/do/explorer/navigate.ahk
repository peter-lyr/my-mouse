navigate_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("go up dir")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
    {
      gosub try_activate_global_mouse_id
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
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1 || is_msedge(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("go back")
      }
      if (is_neovim() == 1)
      {
        push_msg_action("go back")
      }
    }
  } else
  {
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1 || is_msedge(global_mouse_title, global_mouse_processname) == 1)
    {
      gosub try_activate_global_mouse_id
      send, {alt down}{left}
      send, {alt up}
    }
    if (is_neovim() == 1)
    {
      gosub try_activate_global_mouse_id
      send, {ctrl down}o
      send, {ctrl up}
    }
  }
return

navigate_forward:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_explorer(global_mouse_title, global_mouse_processname) == 1 || is_msedge(global_mouse_title, global_mouse_processname) == 1)
      {
        push_msg_action("go forward")
      }
      if (is_neovim() == 1)
      {
        push_msg_action("go forward")
      }
    }
  } else
  {
    if (is_explorer(global_mouse_title, global_mouse_processname) == 1 || is_msedge(global_mouse_title, global_mouse_processname) == 1)
    {
      gosub try_activate_global_mouse_id
      send, {alt down}{right}
      send, {alt up}
    }
    if (is_neovim() == 1)
    {
      gosub try_activate_global_mouse_id
      send, {ctrl down}i
      send, {ctrl up}
    }
  }
return
