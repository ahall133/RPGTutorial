//update Camera

//update destination

if (instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	}
	
//update Object position

x += (xTo - x) /15;
y += (yTo - y) /15;

//keep camrea center inside room

x = clamp(x, viewWidthhalf, room_width - viewWidthhalf);
y = clamp(y, viewHeighthalf, room_height - viewHeighthalf);

//Screenshake

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthhalf, y - viewHeighthalf);