/// @description Initial code for nut because I don't want to cause a conflict

global.nutPartSystem = part_system_create();
global.nutPartType[0] = 0;

enum nut_part{
	jigsaw_pickup
}

var _p = part_type_create();

part_type_shape(_p, pt_shape_sphere);
part_type_life(_p, 20, 40);
part_type_alpha2(_p, 1, 0);
part_type_size(_p, 0.4, 0.5, -0.01, 0);
part_type_speed(_p, 2 , 4, -0.01, 0);
part_type_direction(_p, 0, 360, 0, 0);
part_type_gravity(_p, 0.02, 270);
part_type_orientation(_p, 0, 0, 0, 0, true);

global.nutPartType[nut_part.jigsaw_pickup] = _p;