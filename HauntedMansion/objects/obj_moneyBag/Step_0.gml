//Gravity
vel_y += GRAVITY_ACC;
if(vel_y > GRAVITY_MAX){
	vel_y = GRAVITY_MAX
}
//Fall
if(place_meeting_list(x,y+vel_y,obj_wall,obj_sigil)){
	instance_destroy();	
}else{
	y += vel_y;	
}
//Move horizontally
if(!place_meeting(x+vel_x,y,obj_wall)){
	x += vel_x;	
}else{
	if(vel_x > 0){
		x = floor(x);
		while(!place_meeting_list(x+1,y,obj_wall,obj_sigil)){
			x++;	
		}
	}else if(vel_x < 0){
		x = ceil(x);
		while(!place_meeting_list(x-1,y,obj_wall,obj_sigil)){
			x--;	
		}
	}
}
//Hit player
scr_damage();