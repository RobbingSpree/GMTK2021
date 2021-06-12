/// @description Insert description here
// You can write your code in this editor
focus = noone;
solved = false;

//the answers
solved_angles = [270,90,180,0,180,0,0,180,270,90,270,90];
solved_x = [0,1,1,0,1,0,2,3,2,3,2,3];
solved_y = [0,1,2,3,4,5,1,0,2,3,4,5];

for (var i=0; i<12; i++) {
	var xx = irandom_range(3,17)*50;
	var yy = irandom_range(3,17)*50;
	var piece = instance_create_layer(xx,yy,"Instances",obj_torn_paper);
	piece.ang = irandom(8)*45;
	piece.index = i;
	piece.image_index = i;
	sx = x+solved_x[i]*75;
	sy = y+solved_y[i]*75;
	sa = solved_angles[i];
}



