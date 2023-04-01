neovim_watcher:
  if (is_active_neovim())
  {
    neovim_keyboard_en = 1
  } else
  {
    neovim_keyboard_en = 0
  }
return
