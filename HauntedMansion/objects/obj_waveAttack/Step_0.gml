if(!place_meeting_list(x+(WAVE_SPEED*image_xscale),y,obj_wall,obj_sigil)){
	x += WAVE_SPEED*image_xscale;
}else{
	instance_destroy();	
}

scr_damage(true);