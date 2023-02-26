do_rbutton_wheel_up:
  switch direction
  {
    case "down":
    {
      switch count
      {
        case 1:
        {
          gosub transparency_up
        }
      }
    }
  }
return
