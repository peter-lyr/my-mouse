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
    case "center":
    {
      switch count
      {
        case 1:
        {
          gosub shift_wheel_down
        }
      }
    }
  }
return
