do_rbutton_wheel_up:
  switch direction
  {
    case "down":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub transparency_up
        ; }
      }
    }
    case "up":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub volume_up
        ; }
      }
    }
    case "center":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub shift_wheel_up
        ; }
      }
    }
    case "right":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub pgup
        ; }
        ; case 2:
        ; {
        ;   gosub pgup_40
        ; }
      }
    }
    case "right_down":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub ctrl_win_left
        ; }
      }
    }
    case "left_up":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub navigate_forward
        ;   gosub bcompare_ctrl_p
        ; }
      }
    }
    case "left":
    {
      switch count
      {
        ; case 1:
        ; {
        ;   gosub ctrl_home
        ; }
      }
    }
  }
return
