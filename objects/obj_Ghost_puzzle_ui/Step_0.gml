if keyboard_check_pressed(vk_space){
	time = 0;
}

time = time + 1;

/*
// silde up
y = lerp(ystart, desty, clamp(time / timeMoveSet, 0, 1));

//scale
image_xscale = 1 + sin(pi*clamp(time / timeInflateSet, 0, 1));
image_yscale = image_xscale;

/*
if keyboard_check_pressed(vk_space){
	jiggleRemanin = 0;
	y = ystart;
}

jiggleRemanin += jiggleSpeed;

//slide up
y += (desty - y)/slideSpeed;

//inflate
var _rm = clamp(jiggleRemanin, 0, jiggleSet);
image_xscale = 1 + (sin(pi*(_rm/jiggleSet)) * 0.3);
image_yscale = image_xscale;

//shake
if jiggleRemanin <= stopShake{
	if (_rm == jiggleSet) image_angle = 0;
	else image_angle = (sin(current_time*jiggleRotationIntan) * jiggleSizeIntan);
}

//fadeout
/*
if jiggleRemanin >= fadeAway{
	image_alpha = image_alpha - fadeSpeed;
	if image_alpha <= 0{
		y = ystart;
	}
} else {
	image_alpha = 1;
}