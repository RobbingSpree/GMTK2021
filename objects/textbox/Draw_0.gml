//draw actor
if talking < actor.no_one
{
	var spr = person_spr;
	draw_sprite_ext(spr,posing,0,0,0.5,0.5,0,c_white,fade);
}
//draw_set_color(c_red);
//draw_text(20,20,dcount);
//draw_set_color(c_white);

//draw textbox
draw_sprite_ext(dialog_box_spr,0,x1,y1,xscale,yscale,0,c_white,1);
draw_set_color(c_black);
draw_set_halign(fa_left);

draw_textbox_text();

draw_set_color(c_white);
draw_set_font(-1);