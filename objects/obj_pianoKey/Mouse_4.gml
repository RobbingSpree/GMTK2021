/// @description Insert description here
// You can write your code in this editor

audio_play_sound(note, 0, 0);

presstimer = 25;
if(sprite_index == spr_blackKey){
	sprite_index = spr_blackKeya;
}
if(sprite_index == Sprite13){
	sprite_index = Sprite13a;
}

ds_queue_enqueue(owner.lastTenNotes,ds_list_find_value(owner.noteNames,notenum));