#if !neovim_keyboard_en
^+j::
  send {shift down}{down}
  send {shift up}
return

#if !neovim_keyboard_en
^+k::
  send {shift down}{up}
  send {shift up}
return

#if !neovim_keyboard_en
^+'::
  send {shift down}{right}
  send {shift up}
return

#if !neovim_keyboard_en
^+;::
  send {shift down}{left}
  send {shift up}
return




#if !neovim_keyboard_en
^+i::
  send {shift down}{home}
  send {shift up}
return

#if !neovim_keyboard_en
^+o::
  send {shift down}{end}
  send {shift up}
return




; #if !neovim_keyboard_en
; ^+,::
;   send {shift down}{bs}
;   send {shift up}
; return
;
; #if !neovim_keyboard_en
; ^+.::
;   send {shift down}{del}
;   send {shift up}
; return




#if !neovim_keyboard_en
^+u::
  send {shift down}{pgup}
  send {shift up}
return

#if !neovim_keyboard_en
^+p::
  send {shift down}{pgdn}
  send {shift up}
return
