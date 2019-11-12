if(dropping){
	if(!place_meeting(x,y+DROPPER_DOWN,obj_wall)){
		y += DROPPER_DOWN;
	}else{
		y = floor(y);
		while(!place_meeting(x,y+1,obj_wall)){
			y++;	
		}
		dropping = false;
	}
}else{
	if(!place_meeting(x,y-DROPPER_UP,obj_wall)){
		y -= DROPPER_UP;
	}else{
		y = ceil(y);	
		while(!place_meeting(x,y-1,obj_wall)){
			y--;	
		}
		dropping = true;
	}
}