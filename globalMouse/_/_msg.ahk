msg_init:
  iniread, always_show_msg, main.ini, globalmouse, always_show_msg
  if (always_show_msg == "ERROR")
  {
    always_show_msg := 1
    iniwrite %always_show_msg%, main.ini, globalmouse, always_show_msg
  }
  iniread, msg_timeout, main.ini, globalmouse, msg_timeout
  if (msg_timeout == "ERROR")
  {
    msg_timeout := 1000
    iniwrite %msg_timeout%, main.ini, globalmouse, msg_timeout
  }
return

push_msg_action(text)
{
  global msg
  global action_name
  if (strlen(text) > 0)
  {
    if (strlen(msg) > 0)
    {
      msg .= "`n"
    }
    msg .= action_name
    msg .= ": "
    msg .= text
  }
}

push_msg(text)
{
  global msg
  if (strlen(text) > 0)
  {
    if (strlen(msg) > 0)
    {
      msg .= "`n"
    }
    msg .= text
  }
}
