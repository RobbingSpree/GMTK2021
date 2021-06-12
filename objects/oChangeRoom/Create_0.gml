//Rooms
/* you have to set it in the rooms creation code
e.g. 
oChangeRoom.roomLeft = rmPizzaworld;
oChangeRoom.roomRight = rmMyRoom;

if it's not set, the sprite for that side won't appear
*/
roomLeft = noone;
roomRight = noone;
roomUp = noone;
roomDown = noone;

selectedRoom = noone;

//How close the cursor has to be in range
activeRange = 64;

//Animating stuff
offSetRange = 32;
offSet = 0;

canMoveToAnOtherRoom = false;

//global inits
global.ghostPuzzleArray = [];

//ghost puzzle pieces init
var _i = 7;
var _arr = global.ghostPuzzleArray;

//7
global.ghostPuzzleArray[_i] = ds_map_create();
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", -1);
ds_map_add(_arr[_i], "vrtTarg", -1);
ds_map_add(_arr[_i], "inPlace", false);
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
ds_map_add(_arr[_i], "activated", false);
ds_map_add(_arr[_i], "horTarg", 64 + (4 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68);
ds_map_add(_arr[_i], "inPlace", false);
_i--;