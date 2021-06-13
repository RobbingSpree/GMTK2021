//draw actor
if talking > actor.you
{
	var spr = person_spr;
	switch talking {
		case actor.child_girl: spr = Young_girl_colour; break;
		case actor.old_man: spr = Man_ghost_colour; break;
		case actor.teen_boy: spr = teen_colour_second_try; break;
		case actor.young_woman: spr = Young_woman_colour; break;
	}
	draw_sprite_ext(spr,posing,0,0,0.5,0.5,0,c_white,fade);
}
//draw_set_color(c_red);
//draw_text(20,20,dcount);
//draw_set_color(c_white);

//draw textbox
draw_sprite_ext(dialog_box_spr,0,x1,y,xscale,yscale,0,c_white,1);
draw_set_color(c_green);
draw_set_halign(fa_left);

draw_textbox_text();

draw_set_color(c_white);
draw_set_font(-1);

draw_text(20,20,x1);
draw_text(20,40,x2);