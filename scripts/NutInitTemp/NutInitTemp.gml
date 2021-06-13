//Temp init code
global.nutPartSystem = part_system_create();

//particle emums
enum nut_part{
	jigsaw_pickup,
	electric_sparkle,
	height
}

//initializing array
global.nutPartType[nut_part.height] = 0;

//adding particle
//tail particle
var _p1 = part_type_create();

part_type_shape(_p1, pt_shape_line);
part_type_life(_p1, room_speed*3, room_speed*3);
part_type_alpha2(_p1, 1, 0);
part_type_color2(_p1, c_yellow, c_orange);
part_type_size(_p1, 0.4, 0.5, -0.01, 0);
part_type_speed(_p1, 5, 10, -0.01, 0);
part_type_direction(_p1, 90, 165, 0, 0);
part_type_gravity(_p1, 0.5, 270);
part_type_orientation(_p1, 0, 0, 0, 0, true);

//elec sparkcle
var _p = part_type_create();

part_type_shape(_p, pt_shape_sphere);
part_type_life(_p, 2, 2);
part_type_color1(_p, c_white);
part_type_size(_p, 3, 4, -0.01, 0);
part_type_step(_p, 2, _p1);

global.nutPartType[nut_part.electric_sparkle] = _p;