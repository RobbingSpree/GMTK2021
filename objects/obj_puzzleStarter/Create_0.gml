/// @description Insert description here
// You can write your code in this editor
go_puzzle = false;
image_speed = 0.5;

if dialog_holder.convo_end 
	image_alpha = 0;

last_frame = true;

enum state{
	first_enter,
	first_click,
	second_click,
	solved_puzzle
}

