// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goto_effect(dest){
	with obj_room_change_effect {
		leave = true;
		goto = dest;
		dy = room_height*3;
	}
}