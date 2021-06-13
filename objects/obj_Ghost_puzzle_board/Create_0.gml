selectedPiece = noone;
margin = 64;
boardPickup = false;
animationSpeed = 1.0;

boardOffx = 0;
boardOffy = 0;

puzzleLayer = layer_get_id("PuzzlePieceLayer");
pickupLayer = layer_get_id("Pickup");
hiddenLayer = layer_get_id("Behind");

var _obj;
var _i;
var _ds;

for(_i = 1; _i <= 7; _i++){
	_ds = global.ghostPuzzleArray[_i];
	if (_ds[? "activated"]){
		_obj = instance_create_layer(random_range(x, x + sprite_width), random_range(y, y + sprite_height), puzzleLayer, obj_Ghost_puzzle_piece);
		with(_obj){
			pieceNumber = _i;
			image_index = _i;
			targetX = other.x + _ds[? "horTarg"];
			targetY = other.y + _ds[? "vrtTarg"];
			if _ds[? "inPlace"] == true {
				x = targetX;
				y = targetY;
			}
		}
	}
}

_i = 0;
_ds = global.ghostPuzzleArray[_i];
var _hpLayer = hiddenLayer;
if _ds[? "inPlace"] _hpLayer = puzzleLayer;
_obj = instance_create_layer(x + sprite_width/2, y + sprite_height/2, _hpLayer, obj_Ghost_puzzle_piece);

with(_obj){
	pieceNumber = _i;
	image_index = _i;
	targetX = other.x + _ds[? "horTarg"];
	targetY = other.y + _ds[? "vrtTarg"];
	if _ds[? "inPlace"] == true {
		x = targetX;
		y = targetY;
	}
}

hiddenPiece = _obj;

finished = false;