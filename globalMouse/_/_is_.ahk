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
