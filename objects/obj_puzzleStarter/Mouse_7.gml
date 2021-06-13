/// @description Insert description here
// You can write your code in this editor

//var newPuzzle = instance_create_layer(room_width/2, room_height/2, "Instances_half", puzzle_screen);


if image_alpha >= 1 {
	if go_puzzle == true && only_once {
		global.return_to = room;
		goto_effect(load_puzzle);
		only_once = true;
		global.last_ghost = ghost;
	} else {
		dialog_holder.convo_end = false;
		start_convo(ghost,ghost_talk);
		go_puzzle = true;
	}
}