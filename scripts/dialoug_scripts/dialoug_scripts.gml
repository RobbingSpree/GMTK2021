// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_textbox_text(){
	
	if str != "" || instant
	{
		//variables pulled from object
		/*
		str: the literal string that's been pulled from the script, includes markup characters
		instant: flag to skip showing single characters at a time for this line
		x1 and y1: top left room coordinates for the text to start appearing at, calculated ahead of time to be within the textbox
		margin: distance from edge of textbox for text to appear within
		cuttoff: how many character from the end of the string to stop displaying characters
		timer: used with delay to count frames until the next letter will be shown
		modifier: markup flag for temporarily changing text font and style mid-line. In the script markup flags follow a "/"
		pause: a flag to have a much longer delay between characters to imply punctuation
		new_row: size of a row of text
		box_widt: total width of the textbox, used for when drawing the string after text scroll is complete for the line
		*/
	
		//draw the text
		//variables
		// adjust based on font used
		var charwidth = 13; //width of a single character, use a monospaced font
		var line_end  = 43; //number of characters that can fit in a single line
		var line = 0; //index for how many lines in the textbox the carrat is up to
		var space = 0;
		var i =1; //index for which col the carrat is simulated to be at
		var delay = 3; //frames between drawing the next character, small number = quicker text appearance

		//text position
		tx = x1+margin;
		ty = y1+margin;

		//countdown to next letter
		if cutoff < string_length(str)
		{
			if timer >= delay
			{
				cutoff ++
				timer = 0;
			}
			else timer ++
		}

		//draw the text
		while( i<= string_length(str) && i <= cutoff)
		{
			//check for modifier
			if string_char_at(str,i) =="/"
			{
				modifier = real(string_char_at(str,i+1))
				i++
				i++
			}
			//check for punctuation
			if string_char_at(str,i) == ","
			{
				pause=true;
				alarm[0] = 15;
			}
			if string_char_at(str,i) == "." || string_char_at(str,i) == "?" || string_char_at(str,i) == "!"
			{
				pause=true;
				alarm[0]=30;
			}
	
			//goto next line
			var length =0;
			while (string_char_at(str,i) != " " && i<= string_length(str))
			{
				i++
				length++
			}
			if space+length >line_end
			{
				space = 0;
				line++
			}
			i-=length;
	
			//draw the text
			//apply modifiers
			switch modifier
			{
				case 0: //normal
				{
					draw_set_color(c_black);
					draw_set_font(defont);
					draw_text(tx+(space*charwidth), ty+(new_row*line), string_char_at(str,i));
					break;
				}
				case 1: //shakey
				{
					draw_set_color(c_black);
					draw_text(tx+(space*charwidth)+random_range(-1,1), ty+(new_row*line)+random_range(-1,1), string_char_at(str,i));
					break;
				}
				case 2: //red
				{
					draw_set_color(c_red);
					draw_text(tx+(space*charwidth), ty+(new_row*line), string_char_at(str,i));
					break;
				}
			}
			space++
			i++
		}
	} else draw_text_ext(x1+margin,y1+margin,str,new_row,box_wid);

}

function draw_text_centered(xx,yy,str) {
	var h = draw_get_halign();
	var v = draw_get_valign();
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(xx,yy,str);
	draw_set_valign(v);
	draw_set_halign(h);
}

function mouse_over(target) {

	if mouse_x > target.x && mouse_x < target.x+target.sprite_width && mouse_y >target.y && mouse_y < target.y+target.sprite_height
		return true;
	else
		return false;

}

function mouse_within(x1, y1, x2, y2) {

if mouse_x > x1 && mouse_x < x2 && mouse_y >y1 && mouse_y < y2
		return true;
	else
		return false;

}

function enum_to_string(index, class) {

	enum actor {
		no_one,
		you,
		teen_boy,
		young_woman,
		old_man,
		child_girl
	}
	
	if class == "actor" || class == "Actor" {
		switch (index) {
			case actor.no_one: return "Noone"; break;
			case actor.you: return "You"; break;
			case actor.teen_boy: return "Ghostly Boy"; break;
			case actor.young_woman: return "Ghostly Lady"; break;
			case actor.old_man: return "Ghostly Man"; break;
			case actor.child_girl: return "Ghostly Firl"; break;
		}
	}
	
	enum loc {
		void,
		entry,
		lounge,
		kitchen,
		bath,
		storage
	}
	
	if class == "location" || class == "Location" {
		switch (index) {
			case loc.void:		return "Somewhere Dark"; break;
			case loc.entry:		return "Entryway"; break;
			case loc.lounge:	return "Loungroom"; break;
			case loc.kitchen:	return "Kitchen"; break;
			case loc.bath:		return "Bathroom"; break;
			case loc.storage:	return "Storage"; break;
		}
	}
}

	
function csv_to_dialog(_filename){
	//load file into grid
	if file_exists(_filename) //error check if script csv is misnamed or missing
		show_debug_message("script found");
	else 
		show_debug_message("script missing");
	var tabel = load_csv(_filename);
	//find size of grid
	var size = 149;
	//itterate over grid
	for (var i=1; i<size; i++) {
		var l = new line();
		//show_debug_message(tabel[# 0, i]+ " point in question"); //show raw string value of targeted cell
		if (tabel[# 0, i]) != ""
			l.index					 = real(tabel[# 0, i]);
		if (tabel[# 1, i]) != ""
			l.str					 = tabel[# 1, i];
		if (tabel[# 2, i]) != ""
			l.advance_to			 = real(tabel[# 2, i]); 
		if (tabel[# 3, i]) != ""
			l.speaking				 = tabel[# 3, i];
		if (tabel[# 4, i]) != ""
			l.emote_change_to		 = real(tabel[# 4, i]);
		if (tabel[# 5, i]) != ""
			l.story_flag			 = tabel[# 5, i]; //returns a string so need to either translate this to an enum now or later
		if (tabel[# 6, i]) == "TRUE"
			l.scene_end				 = true; //default value is false
		if (tabel[# 7, i]) != ""
			l.move_to				 = string_to_enum(tabel[# 7, i],"location");
		if (tabel[# 8, i]) != ""
			l.notes					 = tabel[# 8, i];
		
		dialog_holder._script[i-1] = l;
	}
	ds_grid_destroy(tabel);
}

function string_to_enum(str, type) { //turning csv versions of the move to the enum version to make them more readable
	if type == "Location" || type == "location" || type == "LOCATION"
		switch (str) {
			case "kitchen":	return ExploreKitchen; break;
			case "lounge":	return ExploreLounge; break;
			case "hall":	return ExploreHall; break;
			case "bedroom":	return ExploreBedroom; break;
			case "office":	return ExploreOffice; break;
			case "player_select":	return ExploreHall	; break;
			case "floor_map":	return ExploreMap; break;
			case "front_door":	return ExploreOutside; break;
			
		}
	if type == "story" || type == "Story" 
		switch(str) {
			case "": return story.girl;
		}
}
/*
kitchen
lounge
hall
bedroom
office
player_select
floor_map
front_door
*/

function start_convo(person,line) {
	dialog_holder.current_line = line
	dialog_holder.convo_end = false;
	textbox.talking = person;
	textbox.convo_end = false;
	textbox.fade = 0;
	textbox.actor_arrive = true;
	textbox.str = dialog_holder._script[dialog_holder.current_line].str;
}
