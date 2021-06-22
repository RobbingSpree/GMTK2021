time				= 0;
centerInflateSet	= room_speed * 0.5;
centerMoveSet		= room_speed * 0.5;
centerBackAlphaSet	= room_speed * 0.3;
wordsDelay			= centerMoveSet;
wordsSet			= room_speed * 1.0;

fadeAllDelay		= room_speed * 3.0;
fadeAllSet			= room_speed * 0.5;

desty = room_height * 0.5;
starty = desty + 100;

sprCenter	= spr_Ghost_puzzle_ui;
sprFog		= spr_Win_Fog_What_Am_I_Doing_With_My_Life;
sprUpper	= spr_Win_Upper;
upperOff	= -150;
sprLower	= spr_Win_Lower;
lowerOff	= 150;
sprWinTri	= spr_Win_Triangle;

uTime = shader_get_uniform(shdRainbow, "time");
/*
jiggleRemanin = 0;
jiggleSet = room_speed*2;
fadeAway = room_speed*4;

jiggleSpeed = room_speed*0.1;
fadeSpeed = 0.1;
slideSpeed = 4;
desty = y - 100;

stopShake = room_speed*2;

jiggleSizeIntan = 10;
jiggleRotationIntan = 0;
