/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B0B4EF8
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)tails = ds_list_create();$(13_10)ds_list_add(tails, spr_plughole1, spr_plughole2, spr_plughole3,spr_plughole4);$(13_10)sprite_index = ds_list_find_value(tails,global.player_index);"
/// @description Insert description here
// You can write your code in this editor
tails = ds_list_create();
ds_list_add(tails, spr_plughole1, spr_plughole2, spr_plughole3,spr_plughole4);
sprite_index = ds_list_find_value(tails,global.player_index);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 6BCB8073
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
image_xscale = 2;
image_yscale = 2;