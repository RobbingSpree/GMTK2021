/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.005;

if(image_alpha >= 0.8)
{
	instance_create_layer(0, 0, "Instances", titleController);
}