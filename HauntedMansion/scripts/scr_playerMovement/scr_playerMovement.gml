//Basic movement
if(!climbing){
	scr_horizontalMovement();
	scr_verticalMovement();
}else{
	scr_ladderMovement();	
}
//Use doors
if(keyboard_check_pressed(vk_up) && place_meeting_list(x,floor(y)+1,obj_wall,obj_ledge) && (frame_sprite == spr_playerIdle || frame_sprite == spr_playerWalk)){
	if(place_meeting(x,y,obj_door)){
		frame_sprite = spr_playerIdle;
		scr_setTransition(0);
	}else if(place_meeting(x,y,obj_ladder)){
		climbing = true;
		x = instance_nearest(x,y,obj_ladder).x;
	}else if(frame_sprite == spr_playerIdle){
		instance_destroy(obj_sigil);
		sigil_counter = SIGIL_TIME;
	}
}