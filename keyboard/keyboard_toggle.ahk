^#bs::
  if (keyboard_enable)
  {
    keyboard_enable := 0
  } else
  {
    keyboard_enable := 1
  }
  _msg := ""
  if (keyboard_enable)
  {
    _msg .= "neovim_keyboard_en 0`n"
    neovim_keyboard_en &= ~BIT(0)
  } else
  {
    _msg .= "neovim_keyboard_en 1`n"
    neovim_keyboard_en |= BIT(0)
  }
  tooltip %_msg%
  settimer, remove_tooltip_do, -2300
return
