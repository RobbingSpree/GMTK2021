//selecting a room
	//right
if (mouse_x < activeRange) && (roomRight != noone){
	selectedRoom = roomRight;
	//left
} else if (mouse_x > (room_width - activeRange)) && (roomLeft != noone){
	selectedRoom = roomLeft;
	//up
} else if (mouse_y < activeRange) && (roomUp != noone){
	selectedRoom = roomUp;
	//down
} else if (mouse_y > (room_height - activeRange)) && (roomDown != noone){
	selectedRoom = roomDown;
} else selectedRoom = noone;

//If cursor is at range
if selectedRoom != noone {
	offSet = clamp(offSet + 1, 0, offSetRange);
	//Change to selected room
	if mouse_check_button_pressed(mb_left){
		roomLeft = noone;
		roomRight = noone;
		roomUp = noone;
		roomDown = noone;
		room_goto(selectedRoom);
	}
}else offSet = clamp(offSet - 1, 0, offSetRange);