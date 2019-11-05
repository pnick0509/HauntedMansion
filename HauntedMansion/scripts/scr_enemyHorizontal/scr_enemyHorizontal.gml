//Move X
if(!place_meeting_list(x+vel_x,y,obj_wall,obj_ledge,obj_enemy)){
	if(position_meeting_list(x+vel_x+(sprite_width/2*sign(vel_x)),y+1,obj_wall,obj_ledge,obj_enemy)){
		x += vel_x;
	}else{
		vel_x *= -1;
	}
}else if(!place_meeting_list(x+vel_x,y-abs(vel_x),obj_wall,obj_ledge,obj_enemy)){
	x += vel_x;
	y -= abs(vel_x);
}else if(!place_meeting_list(x+sign(vel_x),y,obj_wall,obj_ledge,obj_enemy)){
	if(vel_x > 0){
		x = floor(x);
		while(!place_meeting_list(x+1,y,obj_wall,obj_ledge,obj_enemy)){
			x++;
		}
	}else if(vel_x < 0){
		x = ceil(x);
		while(!place_meeting_list(x-1,y,obj_wall,obj_ledge,obj_enemy)){
			x--;
		}
	}
	vel_x *= -1;
}else{
	if(vel_x > 0){
		x = floor(x);
		while(!place_meeting_list(x+1,y-1,obj_wall,obj_ledge,obj_enemy)){
			x++;
			y--;
		}
	}else if(vel_x < 0){
		x = ceil(x);
		while(!place_meeting_list(x-1,y-1,obj_wall,obj_ledge,obj_enemy)){
			x--;
			y--;
		}
	}
	vel_x *= -1;
}