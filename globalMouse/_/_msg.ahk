msg_init:
  iniread, always_show_msg, main.ini, global_mouse_message, always_show
  if (always_show_msg == "ERROR")
  {
    always_show_msg := 1
    iniwrite %always_show_msg%, main.ini, global_mouse_message, always_show
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
