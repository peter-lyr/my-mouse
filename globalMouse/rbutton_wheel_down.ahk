do_rbutton_wheel_down:
  switch direction
  {
    case "down":
    {
      switch count
      {
        case 1:
        {
          gosub transparency_down
        }
      }
    }
    case "up":
    {
      switch count
      {
        case 1:
        {
          gosub volume_down
        }
      }
    }
  }
return
