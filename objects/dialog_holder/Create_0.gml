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
last_line = 70; //magic number, total number of lines in script, can get from height of the csv import but it can have weird extra values
current_line = 0;
convo_end = false;
//import script into game
csv_to_dialog("Script.csv");
