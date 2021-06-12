if (finished) {
	x += (xstart - x)/8;
	y += (ystart - y)/8;
	
	with(obj_Ghost_puzzle_piece){
		var _ds = global.ghostPuzzleArray[pieceNumber];
		if _ds[? "inPlace"]{
			x = other.x + _ds[? "horTarg"];
			y = other.y + _ds[? "vrtTarg"];
		}
	}
} else {
	
	//picking up things
	if mouse_check_button_pressed(mb_left){
		var _piece = collision_point(mouse_x, mouse_y, obj_Ghost_puzzle_piece, false, true);
		if (_piece != noone) && (_piece.layer != hiddenLayer){
			audio_play_sound(snd_PuzzleMove, 0, false);
			selectedPiece = _piece;
			_piece.layer = pickupLayer;
		} else if collision_point(mouse_x, mouse_y, id, false, false){
			audio_play_sound(snd_PuzzleMoveBig, 0, false);
			boardOffx = mouse_x - x;
			boardOffy = mouse_y - y;
			boardPickup = true;
		}
	}
	
	
	//moving
	if (selectedPiece != noone){
		selectedPiece.x = mouse_x;
		selectedPiece.y = mouse_y;
	} else if boardPickup{
		x = mouse_x - boardOffx;
		y = mouse_y - boardOffy;
		with(obj_Ghost_puzzle_piece){
			var _ds = global.ghostPuzzleArray[pieceNumber];
			if _ds[? "inPlace"]{
				x = other.x + _ds[? "horTarg"];
				y = other.y + _ds[? "vrtTarg"];
			}
		}
	}
	
	//realeasing things
	if mouse_check_button_released(mb_left) {
		if (selectedPiece != noone){
			selectedPiece.layer = puzzleLayer;
			var _ds = global.ghostPuzzleArray[selectedPiece.pieceNumber];
			var _xx = x + _ds[? "horTarg"];
			var _yy = y + _ds[? "vrtTarg"];
	
			if point_in_circle(mouse_x, mouse_y, _xx, _yy, margin){
				audio_play_sound(snd_PuzzleFit, 0, false);
				_ds[? "inPlace"] = true;
				selectedPiece.x = _xx;
				selectedPiece.y = _yy;
			
				finished = true;
				for (var _i = 0; _i < 7; _i++){
					_ds = global.ghostPuzzleArray[_i];
					if (_ds[? "inPlace"] != true) {
						finished = false;
					}
				}
			} else _ds[? "inPlace"] = false;
			selectedPiece = noone;
		} else {
			if hiddenPiece.layer = hiddenLayer{
				if !place_meeting(x, y, hiddenPiece){
					hiddenPiece.layer = puzzleLayer;
				}
			}
			boardPickup = false;
		}
	}
}