if (finished != true) {
	if mouse_check_button_pressed(mb_left){
		var _piece = collision_point(mouse_x, mouse_y, obj_Ghost_puzzle_piece, false, true);
		if (_piece != noone) {
			selectedPiece = _piece;
		}
	}
	
	if (selectedPiece != noone){
		selectedPiece.x = mouse_x;
		selectedPiece.y = mouse_y;
	}
	
	if mouse_check_button_released(mb_left) && selectedPiece != noone{
		var _ds = global.ghostPuzzleArray[selectedPiece.pieceNumber];
		var _xx = x + _ds[? "horTarg"];
		var _yy = y + _ds[? "vrtTarg"];
	
		if point_in_circle(mouse_x, mouse_y, _xx, _yy, margin){
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
	}
}