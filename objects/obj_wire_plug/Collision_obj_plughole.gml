/// @description Insert description here
// You can write your code in this
if(!follow_mouse){
invisibleplug = other;

if(solved == true)
{
	with(other) instance_destroy();
}
var l236FC833_0 = sprite_index;
switch(l236FC833_0)
{
	case spr_plughead1:
		part_particles_create(global.nutPartSystem, x, y, global.nutPartType[nut_part.electric_sparkle], 5);
		if(other.sprite_index == spr_plughole4)
		{
			sprite_index = spr_plugin4;
			plugged = true;
			speed = 0;
			light.image_index=1;
			other.image_alpha = 0;
			audio_play_sound(sfx_click, 0, 0);
		}
		break;

	case spr_plughead2:
		part_particles_create(global.nutPartSystem, x, y, global.nutPartType[nut_part.electric_sparkle], 5);
		if(other.sprite_index == spr_plughole3)
		{
			sprite_index = spr_plugin4;
			plugged = true;
			speed = 0;
			
			light.image_index=1;
			other.image_alpha = 0;
			audio_play_sound(sfx_click, 0, 0);
		}
		break;

	case spr_plughead3:
		part_particles_create(global.nutPartSystem, x, y, global.nutPartType[nut_part.electric_sparkle], 5);
		if(other.sprite_index == spr_plughole2)
		{
			sprite_index = spr_plugin3;
			plugged = true;
			speed = 0;
			light.image_index=1;
			other.image_alpha = 0;
			audio_play_sound(sfx_click, 0, 0);
		}
		break;

	case spr_plughead4:
		part_particles_create(global.nutPartSystem, x, y, global.nutPartType[nut_part.electric_sparkle], 5);
		if(other.sprite_index == spr_plughole1)
		{
			sprite_index = spr_plugin3;
			plugged = true;
			speed = 0;
			light.image_index=1;
			other.image_alpha = 0;
			audio_play_sound(sfx_click, 0, 0);
		}
		break;
}
}