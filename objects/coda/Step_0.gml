/// @description Insert description here
// You can write your code in this editor
if dialog_holder.convo_end = true {
	room_goto(Credits);
	dialog_holder.puzzles_status = [0,0,0,0];
	instance_destroy(self);
}