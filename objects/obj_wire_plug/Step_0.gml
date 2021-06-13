/// @description Insert description here
// You can write your code in this editor
if (abs(x-originx) <10 && abs(y-originy) <10){
	y = originy;
	x = originx;
}

if (abs(x-holetargetx) <20 && abs(y-holetargety) <20 && follow_mouse == false && solved == false){
	x = holetargetx;
	y = holetargety;
	solved = true;
	speed = 0;
	audio_play_sound(sfx_click, 0, 0);
	if(sprite_index == spr_plughead3){
		sprite_index = spr_plugin1;	
	}else {
		sprite_index = spr_plugin2;
	}
}


if(follow_mouse == true)
{
	x = mouse_x;
	y = mouse_y;
}

else
{
	if (!solved){
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
}