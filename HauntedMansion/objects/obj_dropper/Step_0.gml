if(dropping){
	if(!place_meeting_list(x,y+DROPPER_DOWN,obj_wall,obj_sigil)){
		y += DROPPER_DOWN;
	}else{
		y = floor(y);
		while(!place_meeting_list(x,y+1,obj_wall,obj_sigil)){
			y++;	
		}
		dropping = false;
	}
}else{
	if(!place_meeting_list(x,y-DROPPER_UP,obj_wall,obj_sigil)){
		y -= DROPPER_UP;
	}else{
		y = ceil(y);	
		while(!place_meeting_list(x,y-1,obj_wall,obj_sigil)){
			y--;	
		}
		dropping = true;
	}
}