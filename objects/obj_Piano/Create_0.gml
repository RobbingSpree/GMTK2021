/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C29989E
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)list = ds_list_create()$(13_10)ds_list_add(list,key_a,key_b,key_c,key_d,key_e,key_f,key_g,key_ha,key_a4,dkWIN,key_c4,key_d4,dkWIN,key_f4,key_g4,key_ha4);$(13_10)$(13_10)for(i = 0; i < 8; i += 1) {$(13_10)	var newkey = instance_create_layer(x + i*125, y + 0, "whitekeys", obj_pianoKey);$(13_10)$(13_10)	newkey.note = ds_list_find_value(list,i);$(13_10)	newkey.owner = id;$(13_10)	newkey.notenum = i;$(13_10)}$(13_10)$(13_10)for(i = 0; i < 8; i += 1) {$(13_10)	if(!(i == 1))$(13_10)	{$(13_10)		if(!(i == 4))$(13_10)		{$(13_10)			var newkey = instance_create_layer(x + (i*125)+80, y + 0, "blackkeys", obj_pianoKey);$(13_10)		$(13_10)			newkey.sprite_index = spr_blackKey;$(13_10)			newkey.note = ds_list_find_value(list,i+8);$(13_10)			newkey.owner = id;$(13_10)			newkey.notenum = i+8;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)noteNames = ds_list_create();$(13_10)ds_list_add(noteNames, "A","B","C","D","E","F","G","hA","A#","","C#","D#","","F#","G#","A#");$(13_10)lastTenNotes = ds_list_create();$(13_10)newplay = 16;$(13_10)"
/// @description Insert description here
// You can write your code in this editor
list = ds_list_create()
ds_list_add(list,key_a,key_b,key_c,key_d,key_e,key_f,key_g,key_ha,key_a4,dkWIN,key_c4,key_d4,dkWIN,key_f4,key_g4,key_ha4);

for(i = 0; i < 8; i += 1) {
	var newkey = instance_create_layer(x + i*125, y + 0, "whitekeys", obj_pianoKey);

	newkey.note = ds_list_find_value(list,i);
	newkey.owner = id;
	newkey.notenum = i;
}

for(i = 0; i < 8; i += 1) {
	if(!(i == 1))
	{
		if(!(i == 4))
		{
			var newkey = instance_create_layer(x + (i*125)+80, y + 0, "blackkeys", obj_pianoKey);
		
			newkey.sprite_index = spr_blackKey;
			newkey.note = ds_list_find_value(list,i+8);
			newkey.owner = id;
			newkey.notenum = i+8;
		}
	}
}

noteNames = ds_list_create();
ds_list_add(noteNames, "A","B","C","D","E","F","G","hA","A#","","C#","D#","","F#","G#","A#");
lastTenNotes = ds_list_create();
newplay = 16;