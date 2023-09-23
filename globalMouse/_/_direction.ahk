global_mouse_direction:
  mousegetpos, _x, _y
  _dx := _x - global_mouse_x
  _dy := _y - global_mouse_y
  _c  := sqrt(_dx ** 2 + _dy ** 2)
  _gap := circle_size / 2
  _min := _gap * 0.3826834324 ;sin(22.5°) == 0.3826834324
  _max := _gap * 0.9238795325 ;sin(67.5°) == 0.9238795325
  if (_c <= _gap)
  {
    direction := "center"
  } else
  {
    sysget, monitorcount, monitorcount
    loop, %monitorcount%
    {
      sysget, monitor, monitor, %a_index%
      if (_x >= monitorleft and _x <= monitorright and _y >= monitortop and _y <= monitorbottom)
      {
        monitorright := monitorright - 1
        monitorbottom := monitorbottom - 1
        break
      }
    }
    if (_x == monitorleft || _x == monitorright || _y == monitortop || _y == monitorbottom)
    {
      if (_x == monitorleft && _y == monitortop) {
        direction := "side_left_up"
      } else if (_x == monitorright && _y == monitortop) {
        direction := "side_right_up"
      } else if (_x == monitorright && _y == monitorbottom) {
        direction := "side_right_down"
      } else if (_x == monitorleft && _y == monitorbottom) {
        direction := "side_left_down"
      } else if (_y == monitortop) {
        direction := "side_up"
      } else if (_x == monitorright) {
        direction := "side_right"
      } else if (_y == monitorbottom) {
        direction := "side_down"
      } else if (_x == monitorleft) {
        direction := "side_left"
      }
    } else
    {
      _dx := _dx * _gap / _c
      _dy := _dy * _gap / _c
      if (abs(_dx) >= _min and abs(_dx) <= _max and abs(_dy) >= _min and abs(_dy) <= _max)
      {
        if (_dx >= 0 and _dy <= 0)
        {
          direction := "right_up"
        } else if (_dx >= 0 and _dy >= 0)
        {
          direction := "right_down"
        } else if (_dx <= 0 and _dy >= 0)
        {
          direction := "left_down"
        } else
        {
          direction := "left_up"
        }
      } else
      {
        if (abs(_dx) <= _min and _dy <= 0)
        {
          direction := "up"
        } else if (abs(_dy) <= _min and _dx >= 0)
        {
          direction := "right"
        } else if (abs(_dx) <= _min and _dy >= 0)
        {
          direction := "down"
        } else
        {
          direction := "left"
        }
      }
    }
  }
return
