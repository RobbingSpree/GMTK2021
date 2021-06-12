
function line() constructor{
	index				= 0;		//lookup index, may be redundent
	str					= "";		//line of dialog to load
	advance_to			= index+1;	//next line to load after this is dismissed , assumed value is next index
	speaking			= "you";	//name of character speaking
	emote_change_to		= -1;		//enum of emote to change to from actor's spritesheet
	story_flag			= -1;		//enum of actor who's story flag is advanced by this line of dialog
	scene_end			= false;	//if this line is the end of a scene and to re-enable movement
	move_to				= -1;		//move between areas as part of scene
	notes				= "";		//debug values and story notes, cane make visible from text_box
	
	static next = function() {
		//update story flags
		
		
		//check for move flag
		if move_to != -1 
			global.scene = move_to;
		//advance scene or end scene
		var i = dialog_holder.current_line;
		if !scene_end 
			load_next_text();
		else {			
			//release move lock
				
			//clear textbox
				with textbox {
					convo_end = true;
					str = "";
					dialog_holder.current_line= -1;
				}
		}
		//bug check
		if i == dialog_holder.current_line { //if using a debug string or have a rollback loop, force dialog forward
			dialog_holder.current_line++;
			textbox.str = dialog_holder._script[dialog_holder.current_line].str;
		}
	}
	
	static load_next_text = function() {
		dialog_holder.current_line=advance_to;
		textbox.str = dialog_holder._script[advance_to].str;
	}
}