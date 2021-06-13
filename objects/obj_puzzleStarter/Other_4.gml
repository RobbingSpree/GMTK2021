/// @description Insert description here
// You can write your code in this editor
if dialog_holder.progress[ghost] == 0 {
	dialog_holder.convo_end = false;
	start_convo(ghost,room_enter);
	dialog_holder.progress[ghost] += 1;
}
	
