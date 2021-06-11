x += keyboard_check(vk_right) - keyboard_check(vk_left);
y += keyboard_check(vk_down) - keyboard_check(vk_up);

if keyboard_check_pressed(vk_space){
	var _door = instance_place(x,y,oDoor);
	if (_door != noone){
		_door.opened = !_door.opened;
		audio_play_sound(asset_get_index("sndDoor" + string(irandom(1))), 0, false);
	}
}