//Rooms
/* you have to set it in the rooms creation code
e.g. 
oChangeRoom.roomLeft = rmPizzaworld;
oChangeRoom.roomRight = rmMyRoom;

if it's not set, the sprite for that side won't appear
*/
roomLeft = noone;
roomRight = noone;
roomUp = noone;
roomDown = noone;

selectedRoom = noone;

//How close the cursor has to be in range
activeRange = 64;

//Animating stuff
offSetRange = 32;
offSet = 0;

canMoveToAnOtherRoom = false;