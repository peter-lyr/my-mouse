is_rbutton_up()
{
  getkeystate, rbutton_sta, rbutton, p
  if (rbutton_sta == "U")
  {
    return 1
  }
  return 0
}
