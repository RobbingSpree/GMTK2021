/// @description Insert description here
// You can write your code in this editor
if music_volume == 0 {
	music_volume = 1;
	audio_sound_gain(current_track,music_volume,1000);
} else {
	music_volume = 0;
	audio_sound_gain(current_track,music_volume,1000);
}