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

