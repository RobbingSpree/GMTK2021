selectedPiece = noone;
margin = 64;
finished = false;

var _createLayer = "Instances_1"
for(var _i = 0; _i <= 7; _i++){
	var _ds = global.ghostPuzzleArray[_i];
	if (_ds[? "activated"]){
		var _obj = instance_create_layer(x, y, _createLayer, obj_Ghost_puzzle_piece);
		with(_obj){
			pieceNumber = _i;
			image_index = _i;
			targetX = x + _ds[? "horTarg"];
			targetY = y + _ds[? "vrtTarg"];
			if _ds[? "inPlace"] == true {
				x = targetX;
				y = targetY;
			}
		}
	}
}