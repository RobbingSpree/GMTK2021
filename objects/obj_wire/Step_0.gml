/// @description Insert description here
// You can write your code in this editor

direction = point_direction(x, y, owner.x, owner.y);

image_angle = point_direction(x,y,owner.x,owner.y);

var dis = point_distance(x,y,owner.x,owner.y); //distance from object to mouse
var unit = 64; //width of sprite
image_xscale = dis/unit; //simpler version of the below line
//image_xscale = sqrt((owner.x-x)*(owner.x-x) + (owner.y-y)*(owner.y-y))/31;
image_yscale = 1;
