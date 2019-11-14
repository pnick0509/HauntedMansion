//Setup light each frame
if(!surface_exists(global.light)){
	global.light = surface_create(VIEW_WIDTH+VIEW_BUFFER*2,VIEW_HEIGHT+VIEW_BUFFER*2);
}
surface_set_target(global.light);
draw_set_color(make_color_rgb(BRIGHTNESS,BRIGHTNESS,BRIGHTNESS));
draw_rectangle(0,0,VIEW_WIDTH+VIEW_BUFFER*2,VIEW_HEIGHT+VIEW_BUFFER*2,false);
surface_reset_target();
//Move
global.drawX = VIEW_X;
global.drawY = VIEW_Y;

//Transition
if(global.transition_id != -1){
	global.transition_timer--;
	if(!surface_exists(global.transition_surface)){
		global.transition_surface = surface_create(VIEW_WIDTH*2,VIEW_HEIGHT*2);
	}	
	surface_set_target(global.transition_surface);
	draw_set_color(make_color_rgb(0,0,0));
	//Draw black out
	draw_rectangle(0,0,VIEW_WIDTH*2,VIEW_HEIGHT*2,false);
	scr_transition();
	//Reset target
	surface_reset_target();
}else{
	if(surface_exists(global.transition_surface)){
		surface_free(global.transition_surface);
	}	
}

//Boss Timer
if(room == rm_boss){
	bossMicro -= delta_time;
	while(bossMicro < 0){
		bossMicro += 1000000;
		bossSeconds--;
	}
	while(bossSeconds < 0){
		bossSeconds += 60;
		bossMinutes--;
	}
	if(bossMinutes < 0 || (bossMinutes == 0 && bossSeconds == 0)){
		room = rm_conclusion;	
	}
}