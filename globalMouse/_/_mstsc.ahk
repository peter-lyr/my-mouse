mstsc_watcher:
  mousegetpos, , , _temp_id
  winget, _temp_processname, processname, ahk_id %_temp_id%
  _temp_processname := trim(_temp_processname)
  if ((regexmatch(_temp_processname, "i)mstsc\.exe") || regexmatch(_temp_processname, "i)sunloginclient\.exe")) && !mstsc_enable)
  {
    global_mouse_en &= ~BIT(0)
  } else
  {
    global_mouse_en |= BIT(0)
  }
  if (global_mouse_en == 0)
  {
    settimer, global_mouse_watcher, off
    gosub global_mouse_end
  }
return

mstsc_init:
  iniread, mstsc_enable, main.ini, mstsc, enable
  if (mstsc_enable == "ERROR")
  {
    mstsc_enable := 0
    iniwrite %mstsc_enable%, main.ini, mstsc, enable
  }
return

mstsc_enable:
  if (action_before)
  {
    push_msg_action(format("mstsc_enable: {:d}->1", mstsc_enable))
    always_show_msg_changing := 1
  } else
  {
    mstsc_enable := 1
    iniwrite %mstsc_enable%, main.ini, mstsc, enable
  }
return

mstsc_disable:
  if (action_before)
  {
    push_msg_action(format("mstsc_enable: {:d}->0", mstsc_enable))
    always_show_msg_changing := 1
  } else
  {
    mstsc_enable := 0
    iniwrite %mstsc_enable%, main.ini, mstsc, enable
  }
return
