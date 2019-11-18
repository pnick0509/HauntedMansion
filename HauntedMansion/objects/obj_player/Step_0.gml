//If no transitions are active
if(global.transition_id == -1 && !instance_exists(obj_ghost)){
	//Do sigil
	if(sigil_counter > 0){
		if(keyboard_check(vk_up)){
			sigil_counter--;
			if(sigil_counter <= 0){
				instance_create_layer(x+(32*frame_xscale),y,layer,obj_sigil);	
			}
		}else{
			sigil_counter = 0;
			scr_playerMovement();
		}
	}else{
		scr_playerMovement();
	}
	//Test win and lose
	if(place_meeting(x,y,obj_death)){
		scr_levelLost();
	}else if(place_meeting(x,y,obj_goal)){
		//scr_levelClear();	
		var newGhost = instance_create_layer(obj_goal.appear_x,obj_goal.appear_y,layer,obj_ghost);
		with(newGhost){
			ghost_id = obj_goal.appear_id;
			scr_ghosts(ghost_id,1);	
		}
		if(newGhost.x < x){
			newGhost.image_xscale = -1;	
		}
	}
}
//Boss Damage
if(damage_counter > 0){
	damage_counter--;
	if(damage_counter < 0){
		damage_counter = 0;	
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