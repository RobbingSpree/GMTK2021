/// @description Insert description here
// You can write your code in this editor
if enter {
	dy -= spd;
	if dy <= 0
		enter = false;
}

if leave {
	spr = room_transition_spr_up;
	dy -= spd;
	global.return_to = room;
	if dy <= room_height {
		room_goto(goto);
	}
}

//debug
/*
if keyboard_check_released(vk_space) {
	leave = true;
	dy = room_height*3;
}