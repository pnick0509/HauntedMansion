draw_self();
for(var i = 0; i < 8; i++){
	draw_sprite(spr_chain,0,x-32,y-(40*i));
	draw_sprite(spr_chain,0,x+32,y-(40*i));
}