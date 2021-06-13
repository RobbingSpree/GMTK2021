/// @description Insert description here
// You can write your code in this editor


if change_music {
		audio_sound_gain(last_track,0,500); //Set this sound to the global volume
		current_track = audio_play_sound(music,0,true); // play sound, repeat for music
		audio_sound_gain(current_track,music_volume,1000); //Set this sound to the global volume
	change_music = false;
}

if play_sfx {
	if snd != noone {
		var play = audio_play_sound(snd,1,false); // play sound and set local var
		audio_sound_gain(play,0.7,0); //Set this sound to the global volume
		audio_sound_pitch(play,random_range(0.5,1.5)); //change pitch
	}
	play_sfx = false;
}