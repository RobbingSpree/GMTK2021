/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21D8592A
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)win = 0;$(13_10)global.player_index = 1;$(13_10)randomstart = ds_list_create();$(13_10)ds_list_add(randomstart, 0, 1, 2);$(13_10)ds_list_shuffle(randomstart);$(13_10)$(13_10)plugs = ds_list_create();$(13_10)$(13_10)for(i = 0; i < 3; i += 1) {$(13_10)	global.player_index = i;$(13_10)	hole = instance_create_layer(900-sprite_width, 100+200*ds_list_find_value(randomstart,i), "Instances", obj_plughole);$(13_10)	$(13_10)	plug = instance_create_layer(0, 100+200*i, "Instances", obj_wire_plug);$(13_10)	ds_list_add(plugs, plug);$(13_10)	plug.holetargetx = hole.x;$(13_10)	plug.holetargety = hole.y;$(13_10)}"
/// @description Insert description here
// You can write your code in this editor
win = 0;
global.player_index = 1;
randomstart = ds_list_create();
ds_list_add(randomstart, 0, 1, 2);
ds_list_shuffle(randomstart);

plugs = ds_list_create();

for(i = 0; i < 3; i += 1) {
	global.player_index = i;
	hole = instance_create_layer(900-sprite_width, 100+200*ds_list_find_value(randomstart,i), "Instances", obj_plughole);
	
	plug = instance_create_layer(0, 100+200*i, "Instances", obj_wire_plug);
	ds_list_add(plugs, plug);
	plug.holetargetx = hole.x;
	plug.holetargety = hole.y;
}