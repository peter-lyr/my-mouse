keyboard_init:
  iniread, keyboard_enable, main.ini, keyboard, enable
  if (keyboard_enable == "ERROR")
  {
    keyboard_enable := 1
    iniwrite %keyboard_enable%, main.ini, keyboard, enable
  }
  if (keyboard_enable)
  {
    keyboard_enable := 1
  } else
  {
    keyboard_enable := 0
  }
  keyboard_enable := 1 - keyboard_enable
  gosub keyboard_toggle
return
