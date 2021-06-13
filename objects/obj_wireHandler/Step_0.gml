/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22DC8874
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DECF8F5
/// @DnDArgument : "var" "win"
if(win == 0)
{
	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 29D33B5B
	/// @DnDParent : 0DECF8F5
	/// @DnDArgument : "cond" "i < 3"
	for(i = 0; i < 3; i += 1) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D9F6EB6
		/// @DnDParent : 29D33B5B
		/// @DnDArgument : "var" "ds_list_find_value(plugs,i).solved"
		/// @DnDArgument : "value" "false"
		if(ds_list_find_value(plugs,i).solved == false)
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 0B242212
			/// @DnDParent : 3D9F6EB6
			break;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AC8DF9A
		/// @DnDParent : 29D33B5B
		/// @DnDArgument : "var" "i"
		/// @DnDArgument : "value" "2"
		if(i == 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6F3D2236
			/// @DnDParent : 3AC8DF9A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "win"
			win = 1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 34ACEB90
			/// @DnDParent : 3AC8DF9A
			/// @DnDArgument : "soundid" "sfx_win"
			/// @DnDSaveInfo : "soundid" "sfx_win"
			audio_play_sound(sfx_win, 0, 0);
		}
	}
}