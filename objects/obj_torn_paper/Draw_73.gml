/// @description Insert description here
// You can write your code in this editor

if obj_paper_controller.focus == self {
	draw_set_color(c_red);
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_triangle,0,x,y,1.1,1.1,ang,c_red,0.7);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}
if solved {
	draw_set_color(c_blue);
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_triangle,0,x,y,1.1,1.1,ang,c_blue,0.7);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}
draw_self();
/*
draw_set_color(c_red);
draw_text(x,y,abs((ang mod 360)-sa));
draw_text(x,y+20,abs(x-sx));
draw_text(x,y+40,abs(y-sy));
draw_line(x,y,sx,sy);
draw_set_color(c_white);
*/
if count>threshold || moved {
	if spin
		draw_sprite_ext(spr_triangle_arrows,0,x,y,1,1,ang,c_white,1);
	if moved 
		draw_sprite_ext(spr_triangle_arrows,1,x,y,1,1,0,c_white,1);
}