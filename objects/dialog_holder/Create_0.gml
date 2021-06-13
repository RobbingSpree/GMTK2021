progress = []; //the current scene the player has reached with a puzzle
holding_dialog = []; //the string to display if the player asks for help at each step

enum puz {
	piano,
	wire,
	paper,
	jigsaw
}

enum pose {
	neutral,
	angry,
	sad
}

enum story {
	tutorial,
	girl,
	boy,
	lady,
	man,
	house
}

for (var i=0; i<10; i++)
{
	progress[i] = 0; 
	//0 = first time entering room
	//1 = talking to ghost for first time
	//2 = finishing puzzle
	holding_dialog[i]="You're going to have another go?"; //line of dialog shown when reattempting puzzle
}

//load from external files
_script = [];//the entier script
last_line = 146; //magic number, total number of lines in script, can get from height of the csv import but it can have weird extra values
current_line = 131;
convo_end = false;
//import script into game
csv_to_dialog("Script.csv");

puzzles_status = [0,0,0,0];

#region puzzle setup
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
#endregion