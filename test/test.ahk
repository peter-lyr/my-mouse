~f11::

  ; ; 显示每个监视器的信息.
  ; sysget, monitorcount, monitorcount
  ; sysget, monitorprimary, monitorprimary
  ; msgbox, monitor count:`t%monitorcount%`nprimary monitor:`t%monitorprimary%
  ; loop, %monitorcount%
  ; {
  ;   sysget, monitorname, monitorname, %a_index%
  ;   sysget, monitor, monitor, %a_index%
  ;   sysget, monitorworkarea, monitorworkarea, %a_index%
  ;   msgbox, monitor:`t#%a_index%`nname:`t%monitorname%`nleft:`t%monitorleft% (%monitorworkarealeft% work)`ntop:`t%monitortop% (%monitorworkareatop% work)`nright:`t%monitorright% (%monitorworkarearight% work)`nbottom:`t%monitorbottom% (%monitorworkareabottom% work)
  ; }

  ; mousegetpos, _temp_x, _temp_y, _temp_id
  ; winactivate ahk_id %_temp_id%
  ; send {esc}

  ; detecthiddenwindows off
  ; winget, windowid, list
  ; _t := ""
  ; _c := 0
  ; loop, % windowid {
  ;   _c += 1
  ;   cwindow = % windowid%a_index%
  ;   wingettitle, _title, ahk_id %cwindow%
  ;   winget, _processname, processname, ahk_id %cwindow%
  ;   _t .= format("{:d}, {:d}, {:s}, {:s}`n", _c, cwindow, _title, _processname)
  ; }
  ; msgbox %_t%

  detecthiddenwindows off
  winget, windowid, list
  count_windows := []
  loop, % windowid {
    cwindow = % windowid%a_index%
    count_windows.push(cwindow)
  }

return


f12::
  detecthiddenwindows off
  winget, windowid, list
  test_break := 0
  loop, % windowid {
    cwindow = % windowid%a_index%
    if cwindow not in %count_windows%
    {
      m := cwindow
      loop % count_windows.length()
      {
        m .= "["
        m .= count_windows[A_Index]
        m .= "]"
      }
      msgbox %m%
      if (test_break)
      {
        break
      }
    }
  }
return

~esc::
  test_break := !test_break
return
