/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D5F933E
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this"
/// @description Insert description here
// You can write your code in this
<<<<<<< Updated upstream

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 570F3D01
/// @DnDArgument : "var" "solved"
/// @DnDArgument : "value" "true"
=======
other.image_alpha = 0;
>>>>>>> Stashed changes
if(solved == true)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 448CCC00
	/// @DnDApplyTo : other
	/// @DnDParent : 570F3D01
	with(other) instance_destroy();
}