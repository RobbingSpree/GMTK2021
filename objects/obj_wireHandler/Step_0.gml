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
			if !layer_exists(WIN_EFFECT_LAYER){
				layer_create(-300, WIN_EFFECT_LAYER);
			}
			instance_create_layer(0,0,WIN_EFFECT_LAYER,obj_Ghost_puzzle_ui);
			audio_play_sound(sfx_win, 0, 0);
		}
	}
}