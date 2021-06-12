/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2450762F
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)if (abs(x-originx) <10 && abs(y-originy) <10){$(13_10)	y = originy;$(13_10)	x = originx;$(13_10)}"
/// @description Insert description here
// You can write your code in this editor
if (abs(x-originx) <10 && abs(y-originy) <10){
	y = originy;
	x = originx;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 372B8D1C
/// @DnDArgument : "var" "follow_mouse"
/// @DnDArgument : "value" "true"
if(follow_mouse == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60F8A5A6
	/// @DnDInput : 2
	/// @DnDParent : 372B8D1C
	/// @DnDArgument : "expr" "mouse_x"
	/// @DnDArgument : "expr_1" "mouse_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = mouse_x;
	y = mouse_y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3CEF34EB
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B77B6B3
	/// @DnDParent : 3CEF34EB
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "originx"
	if(!(x == originx))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E627E6A
		/// @DnDParent : 4B77B6B3
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "originy"
		if(!(y == originy))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6F29A8D8
			/// @DnDParent : 5E627E6A
			/// @DnDArgument : "x" "originx"
			/// @DnDArgument : "y" "originy"
			direction = point_direction(x, y, originx, originy);
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 0B855318
			/// @DnDParent : 5E627E6A
			/// @DnDArgument : "speed" "0.4"
			/// @DnDArgument : "speed_relative" "1"
			speed += 0.4;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 399625C9
			/// @DnDParent : 5E627E6A
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "11"
			if(speed > 11)
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 797ACF18
				/// @DnDParent : 399625C9
				/// @DnDArgument : "x" "originx"
				/// @DnDArgument : "y" "originy"
				direction = point_direction(x, y, originx, originy);
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 3D52B6CF
				/// @DnDParent : 399625C9
				/// @DnDArgument : "speed" "11"
				speed = 11;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 76E5EE12
	/// @DnDParent : 3CEF34EB
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 48F5CD2A
		/// @DnDParent : 76E5EE12
		speed = 0;
	}
}