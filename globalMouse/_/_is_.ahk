is_rbutton_up()
{
  getkeystate, rbutton_sta, rbutton, p
  if (rbutton_sta == "U")
  {
    return 1
  }
  return 0
}

is_lbutton_up()
{
  getkeystate, lbutton_sta, lbutton, p
  if (lbutton_sta == "U")
  {
    return 1
  }
  return 0
}

is_mbutton_up()
{
  getkeystate, mbutton_sta, mbutton, p
  if (mbutton_sta == "U")
  {
    return 1
  }
  return 0
}

is_desktop(window_title)
{
  if (StrLen(window_title) > 0 and window_title != "Program Manager")
  {
    return 0
  } else
  {
    return 1
  }
}
