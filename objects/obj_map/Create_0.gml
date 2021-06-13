/// @description Insert description here
// You can write your code in this editor

sprite_index = map_minimap;
x = 0;
y = 0;

var thisx = sprite_width;
var thisy = sprite_height;

canMoveToAnOtherRoom = false;

hallway_instance = instance_create_layer(861-5, 114-5, "Instances_1", obj_hoverpoint);

office_instance = instance_create_layer(897, 219, "Instances_1", obj_hoverpoint);

lounge_instance = instance_create_layer(847, 26, "Instances_1", obj_hoverpoint);

//kitchen_instance = instance_create_layer(788, 43, "Instances_1", obj_hoverpoint);

sprite_index = map_minimap;
hallway_instance.sprite_index = map_minihall;
office_instance.sprite_index = map_minioffic;
lounge_instance.sprite_index = map_minilounge;
hallway_instance.roomId = ExploreHall;
lounge_instance.roomId = ExploreLounge;
office_instance.roomId = ExploreOffice;
//kitchen_instance.sprite_index = map_minikitch;
//kitchen_instance.roomId = ExploreKitchen;

var l2EEDD20F_0 = room;
switch(l2EEDD20F_0)
{
	case ExploreOffice:
		instance_destroy(office_instance);
		break;

	case ExploreLounge:
		instance_destroy(lounge_instance);
		break;

	case ExploreHall:
		instance_destroy(hallway_instance);
		break;

	//case ExploreKitchen:
		//instance_destroy(kitchen_instance);
		//break;
}