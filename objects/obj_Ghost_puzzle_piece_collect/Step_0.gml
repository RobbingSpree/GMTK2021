if clicked{
	y += (desty - y) / 16;
	if y <= desty + margin && y >= desty - margin{
		image_alpha = image_alpha - fadingSpeed;
		if image_alpha <= 0 {
			instance_destroy();
		}
	}
}