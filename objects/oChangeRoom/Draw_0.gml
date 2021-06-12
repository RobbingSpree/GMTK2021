//drawing arrows
var _rh = room_height /2;
var _rw = room_width /2;
var _offHor = 16;
var _offVrt = 16;

if (roomRight != noone){
	draw_sprite_ext(sArrow, 0, _offHor + offSet, _rh, -1, 1, 0, image_blend, image_alpha);
}

if (roomLeft != noone){
	draw_sprite_ext(sArrow, 0, room_width - _offHor - offSet, _rh, 1, 1, 0, image_blend, image_alpha);
}

if (roomUp != noone){
	draw_sprite_ext(sArrow, 0, _rw, _offVrt + offSet, 1, 1, 90, image_blend, image_alpha);
}

if (roomDown != noone){
	draw_sprite_ext(sArrow, 0, _rw, room_height - _offVrt - offSet, -1, 1, 90, image_blend, image_alpha);
}