/// @description Insert description here
// You can write your code in this editor
var str = "";

switch room {
	case ExploreBedroom: str = "Bedroom"; break;
	case ExploreHall: str = "Hallway"; break;
	case ExploreKitchen: str = "Kitchen"; break;
	case ExploreLounge: str = "Lounge"; break;
	case ExploreMap: str = "Map View"; break;
	case ExploreOffice: str = "Office"; break;
	case ExploreOutside: str = "Outside View"; break;
	case ExploreRoom: str = "Debug Room"; break;
	default: str = "Somewhere else: " + string(room);
}

draw_text(20,40,str);