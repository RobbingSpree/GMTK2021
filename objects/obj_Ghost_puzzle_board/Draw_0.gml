draw_self();
for(var _i = 0; _i < 7; _i++){
	for (var _j = 0; _j < 5; _j++){
		draw_circle(x + 64 + (_i * 128),y + 68 + (_j * 135), 3, false);
	}
}

if finished{
	draw_set_color(make_color_hsv(current_time mod 255,255,255));
	draw_text(x,y,"YOU'RE WINNER");
} else {
	with(obj_Ghost_puzzle_piece){
		if layer != other.hiddenLayer{
			shader_set(shdAllWhite);
			draw_sprite_ext(sprite_index, image_index, x, y, 1.1, 1.1, image_angle, image_blend, image_alpha);
			shader_reset();
		}
	}
}