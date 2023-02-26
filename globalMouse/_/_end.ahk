remove_tooltip_do:
  tooltip
return

remove_tooltip_do2:
  if (remove_tooltip_en)
  {
    tooltip
  }
return

global_mouse_end:
  settimer, remove_tooltip_do, -2300
  settimer, remove_tooltip_do2, -20
  gosub circle_hide
return
