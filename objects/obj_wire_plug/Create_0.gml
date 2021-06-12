/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C2BEE95
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)ang = 0;$(13_10)index = 0;$(13_10)moved = false;$(13_10)spin = false;$(13_10)sx = 0;$(13_10)sy = 0;$(13_10)sa = 0;$(13_10)solved = false;$(13_10)dx = x;$(13_10)dy = y;$(13_10)originx = dx$(13_10)originy = dy$(13_10)follow_mouse = false;$(13_10)image_speed = 0;"
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
image_speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2011CCF5
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_plughead3"
if(sprite_index == spr_plughead3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68760015
	/// @DnDParent : 2011CCF5
	/// @DnDArgument : "xpos" "-30"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "wire"
	/// @DnDArgument : "objectid" "obj_wire"
	/// @DnDSaveInfo : "objectid" "obj_wire"
	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F723C45
	/// @DnDInput : 2
	/// @DnDParent : 2011CCF5
	/// @DnDArgument : "expr" "spr_lead2"
	/// @DnDArgument : "expr_1" "id"
	/// @DnDArgument : "var" "wire.sprite_index"
	/// @DnDArgument : "var_1" "wire.owner"
	wire.sprite_index = spr_lead2;
	wire.owner = id;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A6D2E50
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1192174F
	/// @DnDParent : 3A6D2E50
	/// @DnDArgument : "xpos" "-30"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "wire"
	/// @DnDArgument : "objectid" "obj_wire"
	/// @DnDSaveInfo : "objectid" "obj_wire"
	wire = instance_create_layer(x + -30, y + 0, "Instances", obj_wire);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B945314
	/// @DnDInput : 2
	/// @DnDParent : 3A6D2E50
	/// @DnDArgument : "expr" "spr_lead1"
	/// @DnDArgument : "expr_1" "id"
	/// @DnDArgument : "var" "wire.sprite_index"
	/// @DnDArgument : "var_1" "wire.owner"
	wire.sprite_index = spr_lead1;
	wire.owner = id;
}