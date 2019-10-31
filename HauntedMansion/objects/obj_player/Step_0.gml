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
//Gravity
vel_y += acc_grav;
if(vel_y > GRAVITY_MAX){
	vel_y = GRAVITY_MAX
}
//Jump
if(keyboard_check_pressed(vk_space) && (place_meeting(x,y+1,obj_wall) || place_meeting(x,y+1,obj_ledge)) && vel_y >= 0){
	vel_y -= VEL_JUMP;	
}
//Move Y
if(vel_y >= 0){
	if(!place_meeting(x,y+vel_y,obj_wall) && !(place_meeting(x,y+vel_y,obj_ledge) && !place_meeting(x,y,obj_ledge))){
		y += vel_y;
	}else{
		y = floor(y);
		while(!place_meeting(x,y+1,obj_wall) && !(place_meeting(x,y+1,obj_ledge) && !place_meeting(x,y,obj_ledge))){
			y++;
		}
		vel_y = 0;
	}
}else{
	if(!place_meeting(x,y+vel_y,obj_wall)){
		y += vel_y;
	}else{
		y = ceil(y);
		while(!place_meeting(x,y-1,obj_wall)){
			y--;
		}
		vel_y = 0;
	}
}