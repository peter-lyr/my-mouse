; alt_tab:
;   if (action_before)
;   {
;     if (flag_rbutton_up == 0)
;     {
;       push_msg_action("<alt-tab>")
;     }
;   } else
;   {
;     remove_tooltip_en := 1
;     send {alt down}{tab}
;     send {alt up}
;   }
; return
