/// @description Insert description here
// You can write your code in this editor
ang = 0;
index = 0;
moved = false;
spin = false;
sx = 0;
sy = 0;
sa = 0;
solved = false;
dx = x;
dy = y;
originx = dx
originy = dy
follow_mouse = false;
holetargetx = 0;
holetargety = 0;
light = noone;
image_speed = 0;
heads = ds_list_create();
ds_list_add(heads, spr_plughead1, spr_plughead2, spr_plughead3,spr_plughead4);
sprite_index = ds_list_find_value(heads,global.player_index);

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