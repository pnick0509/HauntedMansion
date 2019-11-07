if(place_meeting(x,y-1,obj_player)){
	if(!place_meeting(x,y+waiter_fall,obj_wall)){
		y += waiter_fall;
		obj_player.y += waiter_fall;
	}else{
		floor(y);
		while(!place_meeting(x,y+1,obj_wall)){
			y++;	
		}
	}
}