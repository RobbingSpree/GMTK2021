/// @description Insert description here
// You can write your code in this editor
focus = noone;
solved = false;

tx = 135; //top x pos
ty = 185; //top y pos
bx = 870; //bottom x pos
by = 740; //bottom y pos
//735 wide
//555 tall

//the answers
solved_angles = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
solved_x = [0,1,2,3,4,0,1,2,3,4,0,1,2,3,4,0,1,2,3,4];
solved_y = [0,0,0,0,0,1,1,1,1,1,2,2,2,2,2,3,3,3,3,3];

for (var i=0; i<20; i++) {
	var xx = irandom_range(10,17)*50;
	var yy = irandom_range(3,17)*50;
	var piece = instance_create_layer(xx,yy,"Instances",obj_torn_paper);
	piece.ang = irandom(4)*90;
	piece.index = i;
	piece.image_index = i;	
	piece.sx = x+(solved_x[i]*150)+75;
	piece.sy = y+(solved_y[i]*150)+75;
	//piece.sa = solved_angles[i];
	piece.px = tx+(i mod 5)*150;
	piece.py = ty+(floor(i/5))*150;
}

check_loop = 15;
check = 0;
check_count = 0;
