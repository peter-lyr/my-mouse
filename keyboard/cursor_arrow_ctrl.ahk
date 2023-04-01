#if !neovim_keyboard_en
^!j::
  send {ctrl down}{down}
  send {ctrl up}
return

#if !neovim_keyboard_en
^!k::
  send {ctrl down}{up}
  send {ctrl up}
return

#if !neovim_keyboard_en
^!m::
  send {ctrl down}{right}
  send {ctrl up}
return

#if !neovim_keyboard_en
^!n::
  send {ctrl down}{left}
  send {ctrl up}
return




#if !neovim_keyboard_en
^!i::
  send {ctrl down}{home}
  send {ctrl up}
return

#if !neovim_keyboard_en
^!o::
  send {ctrl down}{end}
  send {ctrl up}
return




#if !neovim_keyboard_en
^!,::
  send {ctrl down}{bs}
  send {ctrl up}
return

; #if !neovim_keyboard_en
; ^!.::
;   send {ctrl down}{del}
;   send {ctrl up}
; return




#if !neovim_keyboard_en
^!u::
  send {ctrl down}{pgup}
  send {ctrl up}
return

#if !neovim_keyboard_en
^!p::
  send {ctrl down}{pgdn}
  send {ctrl up}
return
