ctrl_c:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("<ctrl-c>")
    }
  } else
  {
    push_msg("copied")
    send {ctrl down}c
    send {ctrl up}
  }
return

ctrl_c_explorer_watcher:
  _clipboard=%clipboard%
  if (_clipboard != "") {
    settimer, ctrl_c_explorer_watcher, off
    if (_clipboard != _oldclipboard) {
      clipboard=%clipboard%
      pathcopied := "copied"
      pathcopied .= ": "
      pathcopied .= _clipboard
      _oldclipboard=%clipboard%
    } else {
      pathcopied := "same"
      pathcopied .= ": "
      pathcopied .= _clipboard
    }
    if (is_rbutton_up()) {
      tooltip %pathcopied%
    }
  }
return

ctrl_c_explorer:
  if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
  {
    settimer, ctrl_c_explorer_watcher, 10
  }
return

ctrl_c_explorer_msg:
  if (is_explorer(global_mouse_title, global_mouse_processname) == 1)
  {
    push_msg_action("copy text such as path")
  }
return

ctrl_c_text:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      gosub ctrl_c_explorer_msg
    }
  } else
  {
    send {ctrl down}c
    send {ctrl up}
    gosub ctrl_c_explorer
  }
return
