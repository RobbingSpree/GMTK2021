/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.005;

if(image_alpha >= 0.8)
{
	if mouse_check_button_released(mb_left)
		goto_effect(ExploreRoom);
	if keyboard_check_released(vk_space)
		goto_effect(Credits);
}

if(image_alpha < 0.2)
{
	randx = (random_range(-100, 100));

	randy = (random_range(-100, 100));
	
	randang = irandom(360);

	var newgoop = instance_create_layer(x + randx, y + randy, "Instances", Obj_spectralgoop);
	newgoop.ang = randang;
}