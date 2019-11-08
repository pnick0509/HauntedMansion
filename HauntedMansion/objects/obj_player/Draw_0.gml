//Draw Sigil
if(sigil_counter > 0){
	draw_sprite_ext(spr_sigilDraw,23-ceil(22/SIGIL_TIME*sigil_counter),x,y-64,1,1,0,make_color_rgb(74,54,54),1);	
}
//Draw Player
if(frame_sprite == spr_playerDash){
	draw_sprite_ext(frame_sprite,frame_index,x+(-8*frame_xscale),y,frame_xscale,1,0,c_white,1);
}else{
	draw_sprite_ext(frame_sprite,frame_index,x+(4*frame_xscale),y,frame_xscale,1,0,c_white,1);
}