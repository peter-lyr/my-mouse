~f11::

  ; 显示每个监视器的信息.
  sysget, monitorcount, monitorcount
  sysget, monitorprimary, monitorprimary
  msgbox, monitor count:`t%monitorcount%`nprimary monitor:`t%monitorprimary%
  loop, %monitorcount%
  {
    sysget, monitorname, monitorname, %a_index%
    sysget, monitor, monitor, %a_index%
    sysget, monitorworkarea, monitorworkarea, %a_index%
    msgbox, monitor:`t#%a_index%`nname:`t%monitorname%`nleft:`t%monitorleft% (%monitorworkarealeft% work)`ntop:`t%monitortop% (%monitorworkareatop% work)`nright:`t%monitorright% (%monitorworkarearight% work)`nbottom:`t%monitorbottom% (%monitorworkareabottom% work)
  }

return
