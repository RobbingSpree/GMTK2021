
draw_self();
if talking {
	draw_text_ext(xx,yy,str,line_height,line_width);
	if talking_to != noone {
		//draw ghost sparite
		var spr = Man_ghost_colour;
		var mouth = mouth_closed_feminine;
		switch talking_to {
			case actor.child_girl: spr = Young_girl_colour; mouth = mouth_closed_feminine; break;
			case actor.old_man: spr = Man_ghost_colour; mouth = mouth_closed_masculine; break;
			case actor.teen_boy: spr = teen_colour_second_try; mouth = mouth_closed_masculine; break;
			case actor.young_woman: spr = Young_woman_colour; mouth = mouth_closed_feminine; break;			
		}
		draw_set_alpha(ghost_alpha);
		draw_sprite(spr,0,0,0);
		draw_sprite(mouth,0,480,470);
		draw_set_alpha(1);
	}
	//draw_text(20,20,full_str);
}