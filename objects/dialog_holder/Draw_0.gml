/// @description Insert description here
// You can write your code in this editor
//show next line data
/*
if instance_exists(textbox) {
	var str = _script[current_line].scene_end;
	draw_set_color(c_yellow);
	if str == true
		str = "last line";
	else
		str = "continue";
	
	draw_text(30,90,str);
	str = "next line: " + string(_script[current_line].advance_to);
	draw_text(30,110,str);
	str = "current line: " + string(current_line);
	draw_text(30,130,str);
	str = "string literal: " + _script[current_line].str;
	draw_text(30,150,str);
	draw_set_color(c_white);
}