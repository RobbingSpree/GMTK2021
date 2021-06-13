progress = []; //the current scene the player has reached with a puzzle
holding_dialog = []; //the string to display if the player asks for help at each step
next_scene_unlocked = []; //flag for if the player can access the next scene for each puzzle

enum puz {
	piano
}

enum pose {
	neutral,
	angry,
	sad
}

for (var i=0; i<puz.piano+1; i++)
{
	progress[i] = 0; //if loading game need to load these values from save file
	next_scene_unlocked[i] = true;
	holding_dialog[i]="I'm a bit busy at the moment. Sorry can we talk later?";
}

//load from external files
_script = [];//the entier script
last_line = 5; //magic number, total number of lines in script, can get from height of the csv import but it can have weird extra values
current_line = 1;
convo_end = false;
//import script into game
csv_to_dialog("Script.csv");

threads = [];//flags for what part player is up to on all the different puzzles
for (var i=0; i<=puz.piano; i++) {  
	threads[i] = 0;
}

//puzzle setup

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
ds_map_add(_arr[_i], "activated", true);
ds_map_add(_arr[_i], "horTarg", 64 + (4 * 128));
ds_map_add(_arr[_i], "vrtTarg", 68);
ds_map_add(_arr[_i], "inPlace", false);
_i--;