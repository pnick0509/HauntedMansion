//This script subtracts the transition

//Set up
gpu_set_blendmode(bm_subtract);
draw_set_color(c_white);

//Draw transition
if(global.transition_id == 0){ //Pinhole out
	if(global.transition_timer > 0){
		draw_circle(VIEW_WIDTH,VIEW_HEIGHT,600*(global.transition_timer/TRANSITION_TIME),false);
	}else{
		global.transition_id = 1;	
		global.transition_timer = 30;
		with(obj_player){
			scr_useDoor();
		}
	}
}else if(global.transition_id == 1){ //Pinhole wait
	if(global.transition_timer <= 0){
		global.transition_id = 2;
		global.transition_timer = TRANSITION_TIME;
	}
}else if(global.transition_id == 2){ //Pinhole in
	if(global.transition_timer > 0){
		draw_circle(VIEW_WIDTH,VIEW_HEIGHT,600-600*(global.transition_timer/TRANSITION_TIME),false);
	}else{
		global.transition_id = -1;	
		global.transition_timer = 0;
	}
}

//Clean up
gpu_set_blendmode(bm_normal);
show_debug_message(global.transition_timer);