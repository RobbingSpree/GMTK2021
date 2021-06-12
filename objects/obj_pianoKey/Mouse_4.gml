/// @description Insert description here
// You can write your code in this editor

audio_play_sound(note, 0, 0);

ds_queue_enqueue(owner.lastTenNotes,ds_list_find_value(owner.noteNames,notenum));