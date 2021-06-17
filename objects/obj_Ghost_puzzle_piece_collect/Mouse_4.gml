if !(clicked) && dialog_holder.convo_end{
	if (clickable){
		var _ds = global.ghostPuzzleArray[collectNumber];
		_ds[? "activated"] = true;
		clicked = true;
		part_particles_create(global.nutPartSystem, mouse_x, mouse_y, global.nutPartType[nut_part.jigsaw_pickup], 5);
		if instance_exists(obj_Ghost_puzzle_ui) obj_Ghost_puzzle_ui.jiggleRemanin = 0;
	}
}
