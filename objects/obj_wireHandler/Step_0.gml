/// @description Insert description here
// You can write your code in this editor

if(win == 0)
{
	for(i = 0; i < 4; i += 1) {
		if(ds_list_find_value(plugs,i).solved == false)
		{
			break;
		}
	
		if(i == 3)
		{
			win = 1;
		
			audio_play_sound(sfx_win, 0, 0);
		}
	}
}