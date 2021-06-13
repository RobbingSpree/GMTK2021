//draw actor
if talking > actor.you
{
	var spr = person_spr;
	switch dialog_holder._script[dialog_holder.current_line].speaking {
		case "child_girl": spr = Young_girl_colour; break;
		case "old_man": spr = Man_ghost_colour; break;
		case "teen_boy": spr = teen_colour_second_try; break;
		case "young_woman": spr = Young_woman_colour; break;
	}
	draw_sprite_ext(spr,posing,0,0,1,1,0,c_white,fade);
}
//draw_set_color(c_red);
//draw_text(20,20,dcount);
//draw_set_color(c_white);

//draw textbox
draw_sprite_ext(dialog_box_spr,0,x1,y,xscale,yscale,0,c_white,1);
draw_set_color(c_black);
draw_set_halign(fa_left);
//draw_text(0,500,dialog_holder._script[dialog_holder.current_line].speaking);

if convo_end == false
	draw_textbox_text();

draw_set_color(c_white);
draw_set_font(-1);

//draw_text(20,20,x1);
//draw_text(20,40,x2);