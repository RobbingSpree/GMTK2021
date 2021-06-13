/// @description Insert description here
// You can write your code in this editor

heads = ds_list_create();
tails = ds_list_create();
randomstart = ds_list_create();

ds_list_add(heads, "spr_plughead1", "spr_plughead2", "spr_plughead3");

ds_list_add(tails, "spr_plughole1", "spr_plughole2", "spr_plughole3");

ds_list_add(randomstart, 0, 1, 2);

var randomstart = ds_list_shuffle(randomstart);

for(i = 0; i < 3; i += 1) {
	hole = instance_create_layer(1000-sprite_width, 100+200*ds_list_find_value(randomstart,i), "Instances", obj_plughole);

	hole.sprite_index = ds_list_ ds_list_find_value(tails,i);

	plug = instance_create_layer(0, 100+200*i, "Instances", obj_wire_plug);

	plug.sprite_index = ds_list_find_value(heads,i);
	plug.holetarget = hole;
}