/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_released(mb_left) {

	if hover {
		var target = obj_paper_controller.focus;
		if target == self && moved == false && count<threshold
			obj_paper_controller.focus = noone;
		if target != self 
			obj_paper_controller.focus = self;
		
	}
	
	moved = false;
	spin = false;
	count = 0;
}

if mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right) {
	dx = mouse_x;
	dy = mouse_y;
}

if mouse_check_button(mb_left) && hover {
	count ++
	if obj_paper_controller.focus == self 
		if count<threshold {
			if abs(mouse_x-dx)>10 || abs(mouse_y-dy)> 10 {
				moved = true;
			}
		} 
		if count>threshold || moved == true{
			if moved == true{
				x = mouse_x;
				y = mouse_y;
		
			} else {
				ang += unit;
				spin = true;
				count = 0;
			}
		}
}
if mouse_check_button(mb_right) && hover {
	count ++
	if obj_paper_controller.focus == self 
		if count<threshold {
			if abs(mouse_x-dx)>10 || abs(mouse_y-dy)> 10 {
				moved = true;
			}
		} 
		if count>threshold || moved == true{
			if moved == true{
				x = mouse_x;
				y = mouse_y;
		
			} else {
				ang -= unit;
				spin = true;
				count = 0;
			}
		}
}

image_angle = ang;

if abs(x-sx) <1000 
	x = sx;
if abs(y-sy) <1000
	y = sy;
if y == sy && x == sx { //&&ang == sa &&
	solved = true;
	ang = sa;
} else 
	solved = false;