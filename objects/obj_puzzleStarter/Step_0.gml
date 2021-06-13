/// @description Insert description here
// You can write your code in this editor
if !dialog_holder.convo_end {
	if image_alpha > 0
		image_alpha -= 0.05;
} else  {
	if image_alpha < 1
		image_alpha += 0.05;
}

if go_puzzle && dialog_holder.convo_end == true {
	go_puzzle = false;
	goto_effect(load_puzzle);
	dialog_holder.progress[ghost] += 1;
	global.last_ghost = ghost;
}