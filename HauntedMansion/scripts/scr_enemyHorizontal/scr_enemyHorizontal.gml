//Move X
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
	vel_x *= -1;
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
	vel_x *= -1;
}