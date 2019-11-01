//Player Input
vel_x = (keyboard_check(vk_right)-keyboard_check(vk_left))*WALK_SPEED;
//Move X
if(!place_meeting(x+vel_x,y,obj_wall)){
	x += vel_x;
}else{
	if(vel_x > 0){
		x = floor(x);
		while(!place_meeting(x+1,y,obj_wall)){
			x++;
		}
	}else if(vel_x < 0){
		x = ceil(x);
		while(!place_meeting(x-1,y,obj_wall)){
			x--;
		}
	}
	vel_x = 0;
}