if(frame_sprite == spr_playerDash){
	draw_sprite_ext(frame_sprite,frame_index,x+(-8*frame_xscale),y,frame_xscale,1,0,c_white,1);
}else{
	draw_sprite_ext(frame_sprite,frame_index,x+(4*frame_xscale),y,frame_xscale,1,0,c_white,1);
}