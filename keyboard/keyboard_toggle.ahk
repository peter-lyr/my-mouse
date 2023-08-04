keyboard_toggle:
  _msg := ""
  if (keyboard_enable)
  {
    keyboard_enable := 0
  } else
  {
    keyboard_enable := 1
  }
  _msg .= format("keyboard_enable {:d}`n", keyboard_enable)
  if (keyboard_enable)
  {
    neovim_keyboard_en &= ~BIT(0)
  } else
  {
    neovim_keyboard_en |= BIT(0)
  }
  _msg .= format("neovim_keyboard_en {:d}`n", neovim_keyboard_en)
  if (keyboard_enable)
  {
    explorer_keyboard_en |= BIT(0)
  } else
  {
    explorer_keyboard_en &= ~BIT(0)
  }
  _msg .= format("explorer_keyboard_en {:d}`n", explorer_keyboard_en)
return

^#bs::
  gosub keyboard_toggle
  tooltip %_msg%
  gosub tooltip_timeout
return
