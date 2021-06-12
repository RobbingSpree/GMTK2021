/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47EF2629
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 52B51700
/// @DnDArgument : "x" "owner.x"
/// @DnDArgument : "y" "owner.y"
direction = point_direction(x, y, owner.x, owner.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3463096A
/// @DnDArgument : "angle" "point_direction(x,y,owner.x,owner.y)"
image_angle = point_direction(x,y,owner.x,owner.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 721F6568
/// @DnDArgument : "xscale" "sqrt((owner.x-x)*(owner.x-x) + (owner.y-y)*(owner.y-y))/31"
image_xscale = sqrt((owner.x-x)*(owner.x-x) + (owner.y-y)*(owner.y-y))/31;
image_yscale = 1;