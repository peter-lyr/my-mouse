transparency_get:
  winget, cur_transparency, transparent, ahk_id %global_mouse_id%
  if (cur_transparency == "")
  {
    cur_transparency := 255
  }
return

transparency_toggle:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_desktop(global_mouse_title) == 0)
      {
        gosub transparency_get
        if (cur_transparency > 0 && cur_transparency < 255)
        {
          push_msg_action(format("no transparency: {:s}", global_mouse_processname))
        } else
        {
          push_msg_action(format("transparency: {:s}", global_mouse_processname))
        }
      } else
      {
        push_msg_action("can not transparency")
      }
    }
  } else
  {
    remove_tooltip_en := 1
    if (is_desktop(global_mouse_title) == 0)
    {
      gosub transparency_get
      if (cur_transparency > 0 && cur_transparency < 255)
      {
        winset, transparent, 255, ahk_id %global_mouse_id%
      } else
      {
        winset, transparent, 200, ahk_id %global_mouse_id%
      }
    }
  }
return

transparency_down:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_desktop(global_mouse_title) == 0)
      {
        gosub transparency_get
        push_msg_action(format("minus transparency: {:d}", cur_transparency))
      } else
      {
        push_msg_action("can not transparency")
      }
    }
  } else
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      gosub transparency_get
      cur_transparency -= 10
      if (cur_transparency < 1)
      {
        cur_transparency := 1
      }
      winset, transparent, %cur_transparency%, ahk_id %global_mouse_id%
    }
  }
return

transparency_up:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      if (is_desktop(global_mouse_title) == 0)
      {
        gosub transparency_get
        push_msg_action(format("plus transparency: {:d}", cur_transparency))
      } else
      {
        push_msg_action("can not transparency")
      }
    }
  } else
  {
    if (is_desktop(global_mouse_title) == 0)
    {
      gosub transparency_get
      cur_transparency += 10
      if (cur_transparency > 255)
      {
        cur_transparency := 255
      }
      winset, transparent, %cur_transparency%, ahk_id %global_mouse_id%
    }
  }
return
