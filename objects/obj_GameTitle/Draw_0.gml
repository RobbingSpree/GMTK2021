/// @description Insert description here
// You can write your code in this editor

draw_self();

if(image_alpha >= 0.8) {
	draw_text_centered(room_width/2,room_height/4*3,"Click to start");
	draw_text_centered(room_width/2,room_height/5*4,"Press space for credits");
	draw_text_centered(room_width/2,room_height/5*4+60,"Press M to toggle sounds");
}