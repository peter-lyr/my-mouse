neovim_watcher:
  if (is_active_neovim())
  {
    neovim_keyboard_en |= BIT(1)
  } else
  {
    neovim_keyboard_en &= ~BIT(1)
  }
return
