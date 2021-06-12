//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 c = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 white = vec4(1.0,0.5,0.5,1.0);
	c = mix(c, white, step(0.1, c.a));
    gl_FragColor = c;
}
