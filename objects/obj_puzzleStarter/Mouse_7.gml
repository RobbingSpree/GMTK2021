/// @description Insert description here
// You can write your code in this editor

//var newPuzzle = instance_create_layer(room_width/2, room_height/2, "Instances_half", puzzle_screen);
if only_once == false && image_alpha >= 1 {
	global.return_to = room;
	goto_effect(load_puzzle);
	only_once = true;
}
