//If no transitions are active
if(global.transition_id == -1){
	//Basic movement
	scr_horizontalMovement();
	scr_verticalMovement();
	//Use doors
	if(keyboard_check_pressed(vk_up) && place_meeting(x,y,obj_door) && place_meeting(x,floor(y)+1,obj_wall) && (frame_sprite == spr_playerIdle || frame_sprite == spr_playerWalk)){
		frame_sprite = spr_playerIdle;
		scr_setTransition(0);
	}
	//Test win and lose
	if(place_meeting(x,y,obj_death)){
		scr_levelLost();
	}else if(place_meeting(x,y,obj_goal)){
		scr_levelClear();	
	}
}
//Reposition Camera
if(instance_exists(obj_camera)){
	obj_camera.x = x;
	obj_camera.y = y-8-32;
}
//Animate
if(frame_sprite == spr_playerIdle){
	scr_animate(1);
}else{
	scr_animate(3);	
}