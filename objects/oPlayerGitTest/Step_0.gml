x += keyboard_check(ord("D")) - keyboard_check(ord("A"));
y += keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _door = instance_place(x,y,oDoorGitTest);
if ((keyboard_check_pressed(vk_space)) && (_door != noone)){
	_door.opened = !_door.opened;
	audio_play_sound(asset_get_index("sndDoor" + string(irandom(1))), 0, false);
}