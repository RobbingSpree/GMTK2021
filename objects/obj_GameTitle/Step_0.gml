/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FE0FBD4
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)image_alpha += 0.005;$(13_10)$(13_10)if(image_alpha >= 0.8)$(13_10){$(13_10)	instance_create_layer(0, 0, "Instances", titleController);$(13_10)}"
/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.005;

if(image_alpha >= 0.8)
{
	instance_create_layer(0, 0, "Instances", titleController);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A97D82F
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.2"
if(image_alpha < 0.2)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4041EE15
	/// @DnDParent : 2A97D82F
	/// @DnDArgument : "var" "randx"
	/// @DnDArgument : "min" "-100"
	/// @DnDArgument : "max" "100"
	randx = (random_range(-100, 100));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 057A84D8
	/// @DnDParent : 2A97D82F
	/// @DnDArgument : "var" "randy"
	/// @DnDArgument : "min" "-100"
	/// @DnDArgument : "max" "100"
	randy = (random_range(-100, 100));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D851247
	/// @DnDParent : 2A97D82F
	/// @DnDArgument : "xpos" "randx"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "randy"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newgoop"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_spectralgoop"
	/// @DnDSaveInfo : "objectid" "obj_spectralgoop"
	var newgoop = instance_create_layer(x + randx, y + randy, "Instances", obj_spectralgoop);
}