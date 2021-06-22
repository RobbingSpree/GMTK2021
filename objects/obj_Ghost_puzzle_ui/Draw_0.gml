
//draw center puzzle thingy
var _middlex = room_width / 2;
var _yy;
var _scale;
var _alpha;

var _alphaAll = lerp(1, 0, clamp((time - fadeAllDelay) / fadeAllSet, 0, 1));
//draw_set_alpha(_alphaAll);

//alpha for background
_alpha = clamp(time / centerBackAlphaSet, 0, 1);

//spinning shit
var _drawnum		= 12;
var _drawAngle		= 0;
var _drawAngleOff	= 360/_drawnum;
repeat(_drawnum){
	draw_sprite_ext(sprWinTri, 0, _middlex, desty, 5, 1, _drawAngle + current_time * 0.01, c_white, _alpha * _alphaAll);
	draw_sprite_ext(sprWinTri, 0, _middlex, desty, 5, 1, _drawAngle - current_time * 0.001, c_white, _alpha * _alphaAll);
	_drawAngle += _drawAngleOff;
}


// background
draw_sprite_ext(sprFog, 0, _middlex, desty, 1, 1, 0, c_white, _alpha * _alphaAll);

// upper & lower words
//shader_set(shdRainbow);
//shader_set_uniform_f(uTime, current_time*0.0005);
_yy = sin(pi * lerp(0, 0.5,clamp((time - wordsDelay) / wordsSet, 0, 1)));
draw_sprite_ext(sprUpper, 0, _middlex, desty + _yy * upperOff, 1, 1, 0, c_white, _yy * _alphaAll);
draw_sprite_ext(sprLower, 0, _middlex, desty + _yy * lowerOff, 1, 1, 0, c_white, _yy * _alphaAll);
//shader_reset();

// center
_yy		= lerp(starty, desty, clamp(time / centerMoveSet, 0, 1));
_scale	= 1 + sin(pi*clamp(time / centerInflateSet, 0, 1));
draw_sprite_ext(sprCenter, 0, _middlex, _yy, _scale, _scale, 0, c_white, _alphaAll);

//draw_set_alpha(1.0);
