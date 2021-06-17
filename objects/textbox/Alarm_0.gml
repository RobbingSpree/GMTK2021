if typing 
	if cutoff < len {
		cutoff++;
		str += string_char_at(full_str,cutoff);
		alarm[0] = delay;
	} else {
		//check if convo ends here
		if dialog_holder._script[dialog_holder.current_line].scene_end {
			convo_end = true;
		}
}