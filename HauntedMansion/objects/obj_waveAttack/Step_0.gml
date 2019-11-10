if(!place_meeting(x+(WAVE_SPEED*image_xscale),y,obj_wall)){
	x += WAVE_SPEED*image_xscale;
}else{
	instance_destroy();	
}