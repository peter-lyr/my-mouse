explorer_watcher:
  if (is_active_explorer())
  {
    explorer_keyboard_en |= BIT(1)
  } else
  {
    explorer_keyboard_en &= ~BIT(1)
  }
return
