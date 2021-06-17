if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space) {

	if convo_end {
		talking = false;
	}
	if room_change {
		var destination = dialog_holder._script[dialog_holder.current_line].move_to;
		goto_effect(destination);
		room_change = false;
	}

	if talking {
		if !typing || instant { //start typing
			dialog_holder.current_line = dialog_holder._script[dialog_holder.current_line+1].advance_to;
			full_str = dialog_holder._script[dialog_holder.current_line].str;
			str = "";
			typing  = true;
			instant = false; //set to a global value to get an always instant textbox from settings
			cutoff = 0;
			len = string_length(full_str);
			alarm[0] = delay;
		} else { //finish typing instantly but don't advance text
			str = full_str;
			typing = false;
			//check if this line is the last in convo
			if dialog_holder._script[dialog_holder.current_line].scene_end {
				convo_end = true;
			}
			if dialog_holder._script[dialog_holder.current_line].move_to != -1{
				room_change = true;
			}
		}
	}
}

if !talking {
	//fade textbox spr out
	if image_alpha > 0
		image_alpha -= 0.05;
} else {
	if image_alpha < 1
		image_alpha += 0.05;
}