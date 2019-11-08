//Gravity
vel_y += GRAVITY_ACC;
if(vel_y > GRAVITY_MAX){
	vel_y = GRAVITY_MAX
}
//Fall
if(place_meeting(x,y+vel_y,obj_wall)){
	instance_destroy();	
}else{
	y += vel_y;	
}
//Hit player
if(place_meeting(x,y,obj_player)){
	global.success--;
	//End game
	if(global.success < 0){
		room = rm_conclusion;	
	}
	//Destroy
	instance_destroy();
}