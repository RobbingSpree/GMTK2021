/// @description Insert description here
// You can write your code in this editor
draw_self();

if solved {
	draw_rectangle(room_width/2-20,room_height/4-20,room_width/2+20,room_height/4+20,false);
	var gren = irandom(255);
	var reed = irandom(255);
	var blu = irandom(255);
	var col = make_color_rgb(reed,gren,blu);
	draw_set_color(col)
	draw_text(room_width/2,room_height/4,"Puzzle Solved!!");
	draw_set_color(c_white);
}