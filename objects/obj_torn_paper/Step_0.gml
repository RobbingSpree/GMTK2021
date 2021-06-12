/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_released(mb_left) {
	if obj_paper_controller.focus == self && moved == false
		obj_paper_controller.focus = noone;
	else 
		obj_paper_controller.focus = self;
	moved = false;
}

if mouse_check_button(mb_left) {
	if obj_paper_controller.focus == self {
		if abs(mouse_x-x)>10 || abs(mouse_y-y)> 10 {
			moved = true;
		}
	}
}