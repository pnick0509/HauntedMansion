//Activate
if(sprite_index == spr_plate){
	if(active == -1){
		if(distance_to_object(obj_player) < 96){
			if(!collision_line(x,y,obj_player.x,obj_player.y-(obj_player.sprite_height/2),obj_wall,false,true)){
				active = 0;
			}
		}
	}else{
		if(active < PLATE_RISE){
			active++;
			y--;
			if(active >= PLATE_RISE){
				goal_x = obj_player.x;
				goal_y = obj_player.y;
				goal_angle = degtorad(point_direction(x,y,goal_x,goal_y));
			}
			image_index = ceil((active/PLATE_RISE)*3);
		}else{
			if(rotate > 0){
				rotate--;
				image_angle += 10;
			}else{
				x += cos(goal_angle)*PLATE_SPEED;
				y -= sin(goal_angle)*PLATE_SPEED;
			}
		}
		//Kill player
		if(place_meeting(x,y,obj_player) && global.transition_id == -1){
			scr_levelLost();
		}
	}

	if(place_meeting(x,y,obj_wall)){
		sprite_index = spr_plateShatter;
		image_index = 0;
	}
}else{
	image_index += 0.1;
	if(image_index >= 2){
		instance_destroy();	
	}
}