//Player Input
vel_x = (keyboard_check(vk_right)-keyboard_check(vk_left))*WALK_SPEED;
//Move X
if(dash_count > 0){
	dash_count--;
	if(!place_meeting(x+sign(frame_xscale)*DASH_SPEED,y,obj_wall)){
		x += sign(frame_xscale)*DASH_SPEED;
	}else{
		if(sign(frame_xscale) > 0){
			x = floor(x);
			while(!place_meeting(x+1,y,obj_wall)){
				x++;	
			}
		}else{
			x = ceil(x);
			while(!place_meeting(x-1,y,obj_wall)){
				x--;	
			}
		}
	}
}else if(doubleTap && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))){
	dash_count = DASH_TIME;
	frame_sprite = spr_playerDash;
}else{
	if(!place_meeting(x+vel_x,y,obj_wall)){
		x += vel_x;
	}else if(!place_meeting(x+vel_x,y-abs(vel_x),obj_wall)){
		x += vel_x;
		y -= abs(vel_x);
	}else if(!place_meeting(x+sign(vel_x),y,obj_wall)){
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
	}else{
		if(vel_x > 0){
			x = floor(x);
			while(!place_meeting(x+1,y-1,obj_wall)){
				x++;
				y--;
			}
		}else if(vel_x < 0){
			x = ceil(x);
			while(!place_meeting(x-1,y-1,obj_wall)){
				x--;
				y--;
			}
		}
		vel_x = 0;
	}
	//Flip player
	if(vel_x < 0){
		frame_xscale = -1;	
		frame_sprite = spr_playerWalk;
	}else if(vel_x > 0){
		frame_xscale = 1;
		frame_sprite = spr_playerWalk;
	}else{
		frame_sprite = spr_playerIdle;	
	}
}