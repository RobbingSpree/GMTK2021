/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.005;

if(image_alpha >= 0.8)
{
	instance_create_layer(0, 0, "Instances", titleController);
}

if(image_alpha < 0.2)
{
	randx = (random_range(-100, 100));

	randy = (random_range(-100, 100));
	
	randang = irandom(360);

	var newgoop = instance_create_layer(x + randx, y + randy, "Instances", Obj_spectralgoop);
	newgoop.ang = randang;
}