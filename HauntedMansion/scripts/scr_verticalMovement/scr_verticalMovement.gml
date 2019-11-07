if(dash_count <= 0){
	//Gravity
	vel_y += GRAVITY_ACC;
	if(vel_y > GRAVITY_MAX){
		vel_y = GRAVITY_MAX
	}
	//Jump
	scr_disableLedges();
	if(keyboard_check(vk_space) && (place_meeting(x,y+1,obj_wall) || place_meeting(x,y+1,obj_ledge)) && vel_y >= 0){
		vel_y = VEL_JUMP;	
	}
	scr_enableLedges();
	//Move Y
	if(vel_y >= 0){
		scr_disableLedges();
		if(!place_meeting(x,ceil(y+vel_y),obj_wall) && !place_meeting(x,ceil(y+vel_y),obj_ledge)){
			y += vel_y;
		}else{
			y = floor(y);
			while(!place_meeting(x,y+1,obj_wall) && !place_meeting(x,y+1,obj_ledge)){
				y++;
			}
			vel_y = 0;
		}
		scr_enableLedges();
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
}