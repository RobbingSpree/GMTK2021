/// @description Insert description here
// You can write your code in this editor

if obj_paper_controller.focus == self {
	draw_set_color(c_red);
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_triangle,0,x,y,1.4,1.4,ang,c_red,0.7);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}