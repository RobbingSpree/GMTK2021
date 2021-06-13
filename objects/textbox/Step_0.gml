

if (mouse_within(x1,y1,x2,y2) && mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && !convo_end 
{
	if cutoff >= string_length(str)-1 
	{
			cutoff =0; //number of characters to not draw at end of string if still animating text appearing
			instant = false; //reset flag so next line animates if this one was skipped
			if dialog_holder.current_line < dialog_holder.last_line
				dialog_holder._script[dialog_holder.current_line].next();
			else {
				convo_end = true;
				str = "";
			}
		} else {
			instant = false;
			cutoff = string_length(str);
		}
}

if convo_end {
	dialog_holder.convo_end = true;
	actor_leave = true;
	//gving back the move control
	if instance_exists(obj_map) obj_map.canMoveToAnOtherRoom = true;
	if instance_exists(obj_Ghost_puzzle_piece_collect) obj_Ghost_puzzle_piece_collect.clickable = true;
	
	y+=5;
	if y>offy
		y=offy;
} else {
	
	// Stop player from moving to other room
	if instance_exists(obj_map) obj_map.canMoveToAnOtherRoom = false;
	
	if y>y1
		y-=5;
}

//actor change
if actor_arrive && fade < 1
{
	fade+= 0.05;
	if fade == 1
		actor_arrive = false;
}
if actor_leave && fade > 0
{
	fade-= 0.05;
	if fade == 0
	{
		actor_leave = false;
	}
}