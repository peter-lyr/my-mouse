keyboard_init:
  iniread, keyboard_enable, main.ini, keyboard, enable
  if (keyboard_enable == "ERROR")
  {
    keyboard_enable := 1
    iniwrite %keyboard_enable%, main.ini, keyboard, enable
  }
return
