explorer_restart:
  if (action_before)
  {
    if (flag_rbutton_up == 0)
    {
      push_msg_action("restart explorer.exe")
    }
  } else
  {
    runwait taskkill /f /im explorer.exe
    run, %comspec% /c ""explorer.exe", , hide, _pid
  }
return
