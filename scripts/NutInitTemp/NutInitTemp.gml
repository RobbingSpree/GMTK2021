//Temp init code
global.nutPartSystem = part_system_create();

//particle emums
enum nut_part{
	jigsaw_pickup,
	electric_sparkle,
	height
}

//initializing array
global.nutPartType[nut_part.height] = 0;

var _p, _p1;

//adding particle
//tail particle
_p1 = part_type_create();

part_type_shape(_p1, pt_shape_line);
part_type_life(_p1, room_speed*3, room_speed*3);
part_type_alpha2(_p1, 1, 0);
part_type_color2(_p1, c_yellow, c_orange);
part_type_size(_p1, 0.4, 0.5, -0.01, 0);
part_type_speed(_p1, 5, 10, -0.01, 0);
part_type_direction(_p1, 90, 165, 0, 0);
part_type_gravity(_p1, 0.5, 270);
part_type_orientation(_p1, 0, 0, 0, 0, true);

//elec sparkcle
_p = part_type_create();

part_type_shape(_p, pt_shape_sphere);
part_type_life(_p, 2, 2);
part_type_color1(_p, c_white);
part_type_size(_p, 3, 4, -0.01, 0);
part_type_step(_p, 2, _p1);

global.nutPartType[nut_part.electric_sparkle] = _p;

// puzzle pickup
_p = part_type_create();

part_type_shape(_p, pt_shape_sphere);
part_type_life(_p, 20, 40);
part_type_alpha2(_p, 1, 0);
part_type_size(_p, 0.4, 0.5, -0.01, 0);
part_type_speed(_p, 2 , 4, -0.01, 0);
part_type_direction(_p, 0, 360, 0, 0);
part_type_gravity(_p, 0.02, 270);
part_type_orientation(_p, 0, 0, 0, 0, true);

global.nutPartType[nut_part.jigsaw_pickup] = _p;


function Wave() {
	/// @desc wave(from, to, duration, offset)
	/// @arg from
	/// @arg to
	/// @arg duration
	/// @arg offset

	var _wave = (argument1 - argument0) * 0.5;

	return argument0 + _wave + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi * 2)) * _wave;
}

function Approach(){
	/// Approach(start, end, shift);

	/****************************************
	 Increments a value by a given shift but 
	 never beyond the end value
	 ****************************************/

	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);
}


//ghost puzzle pieces init
global.ghostPuzzleArray = [];

var _i = 7;
var _arr = global.ghostPuzzleArray;

//7
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false); // if true, this piece will appear in the puzzle board
ds_map_add(_arr[_i], "horTarg", -1);
ds_map_add(_arr[_i], "vrtTarg", -1);
ds_map_add(_arr[_i], "inPlace", false); // if true, this piece will appear in the puzzle board in place
_i--;

//6
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (6 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68 + (4 * 135));
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//5
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (0 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68 + (4 * 135));
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//4
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (1 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68 + (3 * 135));
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//3
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (4 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68 + (2 * 135));
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//2
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (2 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68 + (1 * 135));
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//1
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (6 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68);
ds_map_add(_arr[_i], "inPlace", false);
_i--;

//0
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", true);
ds_map_add(_arr[_i], "horTarg", 64 + (4 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68);
ds_map_add(_arr[_i], "inPlace", false);
_i--;

#macro WIN_EFFECT_LAYER "Win_Effect"