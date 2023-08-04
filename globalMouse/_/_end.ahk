remove_tooltip_do:
  tooltip
return

tooltip_timeout:
  settimer, remove_tooltip_do, -%msg_timeout%
return

remove_tooltip_do2:
  if (remove_tooltip_en)
  {
    tooltip
  }
return

global_mouse_end:
  gosub tooltip_timeout
  settimer, remove_tooltip_do2, -20
  gosub circle_hide
return
