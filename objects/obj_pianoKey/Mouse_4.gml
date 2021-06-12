/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 179946EF
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 77C22B56
/// @DnDArgument : "soundid" "note"
audio_play_sound(note, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 136BAEA1
/// @DnDArgument : "expr" "notenum"
/// @DnDArgument : "var" "owner.newplay"
owner.newplay = notenum;