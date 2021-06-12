/// @description Insert description here
// You can write your code in this editor
if(presstimer>0){
	presstimer-=1;
	if(presstimer==0){
		if(sprite_index == spr_blackKeya){
			sprite_index = spr_blackKey;
		}
		if(sprite_index == Sprite13a){
			sprite_index = Sprite13;
		}
	}
}