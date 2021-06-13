// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goto_effect(dest){
	with obj_room_change_effect {
		leave = true;
		goto = dest;
		dy = room_height*3;
	}
	
	with audio_controller {
		var mu = puzzle_musix;
		switch dest {
			case Credits: mu = spectral_connections_; break;
			case TitleScreen: mu = spectral_connections_; break;
			case ExploreBedroom: mu = floating_music_fixed; break;
			case ExploreHall: mu = floating_music_fixed; break;
			case ExploreKitchen: mu = floating_music_fixed; break;
			case ExploreOffice: mu = floating_music_fixed; break;
			case ExploreLounge: mu = floating_music_fixed; break;
			case GhostPuzzleRoom: mu = puzzle_musix; break;
			case PianoPuzzle: mu = puzzle_musix_ticking; break;
			case TornLetter: mu = puzzle_musix; break;
			case WiringRoom: mu = puzzle_musix; break;
			default: mu = floating_music_fixed;
		}
		if mu != music {
			last_track = current_track;
			audio_stop_sound(last_track);
			music = mu;
			//play sfx here
			change_music = true;
		}
	}
}