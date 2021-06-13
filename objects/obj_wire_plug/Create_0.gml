/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 161B7FCC
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)invisibleplug = noone;$(13_10)ang = 0;$(13_10)index = 0;$(13_10)moved = false;$(13_10)spin = false;$(13_10)sx = 0;$(13_10)sy = 0;$(13_10)sa = 0;$(13_10)solved = false;$(13_10)plugged = false;$(13_10)dx = x;$(13_10)dy = y;$(13_10)originx = dx$(13_10)originy = dy$(13_10)follow_mouse = false;$(13_10)holetargetx = 0;$(13_10)holetargety = 0;$(13_10)image_speed = 0;$(13_10)heads = ds_list_create();$(13_10)ds_list_add(heads, spr_plughead1, spr_plughead2, spr_plughead3,spr_plughead4);$(13_10)sprite_index = ds_list_find_value(heads,global.player_index);$(13_10)og_image = sprite_index;$(13_10)$(13_10)if(sprite_index == spr_plughead3 || sprite_index == spr_plughead4)$(13_10){$(13_10)	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);$(13_10)$(13_10)	wire.sprite_index = spr_lead2;$(13_10)	wire.owner = id;$(13_10)$(13_10)	joint = instance_create_layer(x + 0, y + 0, "Instances", obj_wire_joint);$(13_10)$(13_10)	joint.sprite_index = spr_plugjoint2;$(13_10)	joint.owner = id;$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);$(13_10)$(13_10)	wire.sprite_index = spr_lead1;$(13_10)	wire.owner = id;$(13_10)$(13_10)	joint = instance_create_layer(x + 0, y + 0, "Instances", obj_wire_joint);$(13_10)$(13_10)	joint.sprite_index = spr_plugjoint1;$(13_10)	joint.owner = id;$(13_10)}"
/// @description Insert description here
// You can write your code in this editor

invisibleplug = noone;
ang = 0;
index = 0;
moved = false;
spin = false;
sx = 0;
sy = 0;
sa = 0;
solved = false;
plugged = false;
dx = x;
dy = y;
originx = dx
originy = dy
follow_mouse = false;
holetargetx = 0;
holetargety = 0;
image_speed = 0;
heads = ds_list_create();
ds_list_add(heads, spr_plughead1, spr_plughead2, spr_plughead3,spr_plughead4);
sprite_index = ds_list_find_value(heads,global.player_index);
og_image = sprite_index;

if(sprite_index == spr_plughead3 || sprite_index == spr_plughead4)
{
	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);

	wire.sprite_index = spr_lead2;
	wire.owner = id;

	joint = instance_create_layer(x + 0, y + 0, "Instances", obj_wire_joint);

	joint.sprite_index = spr_plugjoint2;
	joint.owner = id;
}

else
{
	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);

	wire.sprite_index = spr_lead1;
	wire.owner = id;

	joint = instance_create_layer(x + 0, y + 0, "Instances", obj_wire_joint);

	joint.sprite_index = spr_plugjoint1;
	joint.owner = id;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 086CC032
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
image_xscale = 2;
image_yscale = 2;