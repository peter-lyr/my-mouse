mstsc_watcher:
  mousegetpos, , , _temp_id
  winget, _temp_processname, processname, ahk_id %_temp_id%
  _temp_processname := trim(_temp_processname)
  if (regexmatch(_temp_processname, "i)mstsc\.exe") || regexmatch(_temp_processname, "i)sunloginclient\.exe"))
  {
    global_mouse_en &= ~(1 << 0)
  } else
  {
    global_mouse_en |= 1 << 0
  }
  if (global_mouse_en == 0)
  {
    settimer, global_mouse_watcher, off
    gosub global_mouse_end
  }
return
