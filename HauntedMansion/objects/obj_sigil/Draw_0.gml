if(sigil_counter > 1){
	draw_sprite(spr_sigilWall,0,x,y);
}else{
	draw_sprite_ext(spr_sigilWall,0,x,y,1,1,0,c_white,sigil_micros/1000000);
}