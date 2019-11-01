if(vel_y >= 0){
	with(obj_ledge){
		if(y+0 < floor(obj_player.y) || place_meeting(x,y,obj_player) || keyboard_check(vk_down)){
			sprite_index = -1;
		}
	}	
}