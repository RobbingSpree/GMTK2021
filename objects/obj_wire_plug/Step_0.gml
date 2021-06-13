/// @description Insert description here
// You can write your code in this editor
if (abs(x-originx) <10 && abs(y-originy) <10){
	y = originy;
	x = originx;
}

if (abs(x-hole.x) <10 && abs(y-hole.y) <10){
	y = hole.x;
	x = hole.y;
	solved = true;
	audio_play_sound(sfx_click, 0, 0);
}



if(follow_mouse == true)
{
	x = mouse_x;
	y = mouse_y;
}

else
{
	if(!(x == originx))
	{
		if(!(y == originy))
		{
			direction = point_direction(x, y, originx, originy);
		
			speed += 0.4;
		
			if(speed > 11)
			{
				direction = point_direction(x, y, originx, originy);
			
				speed = 11;
			}
		}
	}

	else
	{
		speed = 0;
	}
}