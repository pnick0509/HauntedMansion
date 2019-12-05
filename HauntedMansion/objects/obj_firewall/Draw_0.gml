draw_self();
for(var i = 0; i < 4; i++){
	draw_sprite_ext(spr_fireball,irandom(3),x+8+irandom_range(-0.5,0.5),y+12+(16*i),1,choose(-2,2),90,c_white,1);
}