/// @description Insert description here
// You can write your code in this editor
focus = noone;
solved = false;

for (var i=0; i<12; i++) {
	var xx = irandom_range(3,17)*50;
	var yy = irandom_range(3,17)*50;
	var piece = instance_create_layer(xx,yy,"Instances",obj_torn_paper);
	piece.ang = irandom(30)*12;
	piece.index = i;
}