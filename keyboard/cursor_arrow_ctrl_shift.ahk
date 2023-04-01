#if !neovim_keyboard_en
^+!j::
  send {ctrl down}{shift down}{down}
  send {ctrl up}
  send {shift up}
return

#if !neovim_keyboard_en
^+!k::
  send {ctrl down}{shift down}{up}
  send {ctrl up}
  send {shift up}
return

#if !neovim_keyboard_en
^+!m::
  send {ctrl down}{shift down}{right}
  send {ctrl up}
  send {shift up}
return

#if !neovim_keyboard_en
^+!n::
  send {ctrl down}{shift down}{left}
  send {ctrl up}
  send {shift up}
return




#if !neovim_keyboard_en
^+!i::
  send {ctrl down}{shift down}{home}
  send {ctrl up}
  send {shift up}
return

#if !neovim_keyboard_en
^+!o::
  send {ctrl down}{shift down}{end}
  send {ctrl up}
  send {shift up}
return




#if !neovim_keyboard_en
^+!,::
  send {ctrl down}{shift down}{bs}
  send {ctrl up}
  send {shift up}
return

; #if !neovim_keyboard_en
; ^+!.::
;   send {ctrl down}{shift down}{del}
;   send {ctrl up}
;   send {shift up}
; return




#if !neovim_keyboard_en
^+!u::
  send {ctrl down}{shift down}{pgup}
  send {ctrl up}
  send {shift up}
return

#if !neovim_keyboard_en
^+!p::
  send {ctrl down}{shift down}{pgdn}
  send {ctrl up}
  send {shift up}
return
