/// @description Insert description here
// You can write your code in this editor

if obj_paper_controller.focus == self {
	draw_set_color(c_red);
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_triangle,0,x,y,1.1,1.1,ang,c_red,0.7);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}
draw_self();
draw_set_color(c_black);
draw_text(x,y,ang);
draw_text(x,y+20,x);
draw_text(x,y+40,y);
draw_set_color(c_white);

if count>threshold || moved {
	if count>threshold && !moved
		draw_sprite_ext(spr_triangle_arrows,0,x,y,1,1,ang,c_white,1);
	if moved 
		draw_sprite_ext(spr_triangle_arrows,1,x,y,1,1,0,c_white,1);
}