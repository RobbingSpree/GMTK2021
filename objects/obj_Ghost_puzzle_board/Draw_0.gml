draw_self();
for(var _i = 0; _i < 7; _i++){
	for (var _j = 0; _j < 5; _j++){
		draw_circle(x + 64 + (_i * 128),y + 68 + (_j * 135), 3, false);
	}
}

if finished{
	draw_set_color(make_color_hsv(current_time mod 255,255,255));
	draw_text(x,y,"YOU'RE WINNER");
}