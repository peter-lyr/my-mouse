remove_tooltip_do:
  tooltip
return

global_mouse_end:
  if (remove_tooltip_en)
  {
    tooltip
  } else
  {
    settimer, remove_tooltip_do, -2300
  }
  gosub circle_hide
return
