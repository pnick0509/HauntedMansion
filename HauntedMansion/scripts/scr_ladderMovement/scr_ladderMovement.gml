if(climbing){
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)){
		climbing = false;	
	}
}
if(climbing){
	if(keyboard_check(vk_up)){
		move_collide(id,0,-CLIMB_UP);
	}
	if(keyboard_check(vk_down)){
		move_collide(id,0,CLIMB_DOWN);	
		if(place_meeting(x,y+1,obj_wall)){
			climbing = false;
		}
	}
	if(!place_meeting(x,y,obj_ladder)){
		climbing = false;	
	}
}