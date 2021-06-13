if (follow_mouse == false && !solved){
	follow_mouse = true;
	sprite_index = og_image;
	light.image_index = 0;
	if(invisibleplug){
		invisibleplug.image_alpha = 1;
	}
	plugged = false;
}