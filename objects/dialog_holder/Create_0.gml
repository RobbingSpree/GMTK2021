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