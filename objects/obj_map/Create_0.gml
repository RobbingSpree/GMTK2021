/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74B858D2
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DCA6B94
/// @DnDInput : 3
/// @DnDArgument : "expr" "map_minimap"
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "var_1" "x"
/// @DnDArgument : "var_2" "y"
sprite_index = map_minimap;
x = 0;
y = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 73DE58B9
/// @DnDInput : 2
/// @DnDArgument : "var" "thisx"
/// @DnDArgument : "value" "sprite_width"
/// @DnDArgument : "var_1" "thisy"
/// @DnDArgument : "value_1" "sprite_height"
var thisx = sprite_width;
var thisy = sprite_height;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 74DAE5F3
/// @DnDArgument : "xpos" "861-5"
/// @DnDArgument : "ypos" "114-5"
/// @DnDArgument : "var" "hallway_instance"
/// @DnDArgument : "objectid" "obj_hoverpoint"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "obj_hoverpoint"
hallway_instance = instance_create_layer(861-5, 114-5, "Instances_1", obj_hoverpoint);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C59E9A4
/// @DnDArgument : "xpos" "897"
/// @DnDArgument : "ypos" "219"
/// @DnDArgument : "var" "office_instance"
/// @DnDArgument : "objectid" "obj_hoverpoint"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "obj_hoverpoint"
office_instance = instance_create_layer(897, 219, "Instances_1", obj_hoverpoint);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 08DB171E
/// @DnDArgument : "xpos" "847"
/// @DnDArgument : "ypos" "26"
/// @DnDArgument : "var" "lounge_instance"
/// @DnDArgument : "objectid" "obj_hoverpoint"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "obj_hoverpoint"
lounge_instance = instance_create_layer(847, 26, "Instances_1", obj_hoverpoint);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6CCE43A0
/// @DnDArgument : "xpos" "788"
/// @DnDArgument : "ypos" "43"
/// @DnDArgument : "var" "kitchen_instance"
/// @DnDArgument : "objectid" "obj_hoverpoint"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "obj_hoverpoint"
kitchen_instance = instance_create_layer(788, 43, "Instances_1", obj_hoverpoint);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62F24F9B
/// @DnDInput : 9
/// @DnDArgument : "expr" "map_minimap"
/// @DnDArgument : "expr_1" "map_minihall"
/// @DnDArgument : "expr_2" "map_minioffic"
/// @DnDArgument : "expr_3" "map_minilounge"
/// @DnDArgument : "expr_4" "ExploreHall"
/// @DnDArgument : "expr_5" "ExploreLounge"
/// @DnDArgument : "expr_6" "ExploreOffice"
/// @DnDArgument : "expr_7" "map_minikitch"
/// @DnDArgument : "expr_8" "ExploreKitchen"
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "var_1" "hallway_instance.sprite_index"
/// @DnDArgument : "var_2" "office_instance.sprite_index"
/// @DnDArgument : "var_3" "lounge_instance.sprite_index"
/// @DnDArgument : "var_4" "hallway_instance.roomId"
/// @DnDArgument : "var_5" "lounge_instance.roomId"
/// @DnDArgument : "var_6" "office_instance.roomId"
/// @DnDArgument : "var_7" "kitchen_instance.sprite_index"
/// @DnDArgument : "var_8" "kitchen_instance.roomId"
sprite_index = map_minimap;
hallway_instance.sprite_index = map_minihall;
office_instance.sprite_index = map_minioffic;
lounge_instance.sprite_index = map_minilounge;
hallway_instance.roomId = ExploreHall;
lounge_instance.roomId = ExploreLounge;
office_instance.roomId = ExploreOffice;
kitchen_instance.sprite_index = map_minikitch;
kitchen_instance.roomId = ExploreKitchen;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2EEDD20F
/// @DnDArgument : "expr" "room"
var l2EEDD20F_0 = room;
switch(l2EEDD20F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 59B68E3F
	/// @DnDParent : 2EEDD20F
	/// @DnDArgument : "const" "ExploreOffice"
	case ExploreOffice:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3EDFF6FC
		/// @DnDParent : 59B68E3F
		/// @DnDArgument : "function" "instance_destroy"
		/// @DnDArgument : "arg" "office_instance"
		instance_destroy(office_instance);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 402D00E6
	/// @DnDParent : 2EEDD20F
	/// @DnDArgument : "const" "ExploreLounge"
	case ExploreLounge:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 68938044
		/// @DnDParent : 402D00E6
		/// @DnDArgument : "function" "instance_destroy"
		/// @DnDArgument : "arg" "lounge_instance"
		instance_destroy(lounge_instance);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7E88B833
	/// @DnDParent : 2EEDD20F
	/// @DnDArgument : "const" "ExploreHall"
	case ExploreHall:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 758CAFD4
		/// @DnDParent : 7E88B833
		/// @DnDArgument : "function" "instance_destroy"
		/// @DnDArgument : "arg" "hallway_instance"
		instance_destroy(hallway_instance);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 749FCC30
	/// @DnDParent : 2EEDD20F
	/// @DnDArgument : "const" "ExploreKitchen"
	case ExploreKitchen:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0645B7F9
		/// @DnDParent : 749FCC30
		/// @DnDArgument : "function" "instance_destroy"
		/// @DnDArgument : "arg" "kitchen_instance"
		instance_destroy(kitchen_instance);
		break;
}