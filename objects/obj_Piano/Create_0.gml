/// @description Insert description here
// You can write your code in this editor
firstwin = 0;
list = ds_list_create()
ds_list_add(list,key_a,key_b,key_c,key_d,key_e,key_f,key_g,key_ha,key_a4,"",key_c4,key_d4,"",key_f4,key_g4,key_ha4);

for(i = 0; i < 8; i += 1) {
	var newkey = instance_create_layer(x + i*125, y + 0, "whitekeys", obj_pianoKey);

	newkey.note = list[| i];
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
			newkey.note = list[| i+8];
			newkey.owner = id;
			newkey.notenum = i+8;
		}
	}
}

noteNames = ds_list_create();
ds_list_add(noteNames, "a","b","c","d","e","f","g","A","a#","","c#","d#","","f#","g#","A#");
lastTenNotes = ds_queue_create();
TenNotesAnswer = ds_queue_create();
ds_queue_enqueue(TenNotesAnswer,"d","c","a","g","A","A","f","e","c","d");
newplay = 16;
