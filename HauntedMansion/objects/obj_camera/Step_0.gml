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

//Flip between foyers
if(room == rm_foyer){
	if(keyboard_check_pressed(vk_space)){
		var flip = !layer_get_visible("Table");
		layer_set_visible("Table",flip);
		layer_set_visible("TableBackground",flip);
		layer_set_visible("FoyerBackground",!flip);
		layer_set_visible("Foyer",!flip);
	}
	
	//Select
	global.branchSelect = -1;
	if(mouse_check_range(VIEW_WIDTH/2-256,350,VIEW_WIDTH/2+256,400)){
		global.branchSelect = 0;
	}else if(mouse_check_range(VIEW_WIDTH/2-256,425,VIEW_WIDTH/2+256,475)){
		global.branchSelect = 1;
	}else if(mouse_check_range(VIEW_WIDTH/2-256,500,VIEW_WIDTH/2+256,550)){
		global.branchSelect = 2;
	}
	
	if(mouse_check_button_pressed(mb_left) && global.branchSelect != -1){
		switch(ds_list_find_value(global.ds_branchAction,global.branchSelect+1)){
			case 0:
				scr_branchClear(0,scr_textList(1));
				scr_branchAdd(3,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 1:
				scr_branchClear(0,scr_textList(2));
				scr_branchAdd(3,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 2:
				scr_branchClear(0,scr_textList(3));
				scr_branchAdd(3,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 3:
				scr_branchClear(0,scr_textList(0));
				scr_branchAdd(0,"Martha");
				scr_branchAdd(1,"Mortimer");
				scr_branchAdd(2,"Education");
				break;
			case 4:
				scr_branchEnd();
				break;
			case 5:
				scr_branchEnd();
				layer_set_visible("Table",true);
				layer_set_visible("TableBackground",true);
				layer_set_visible("FoyerBackground",false);
				layer_set_visible("Foyer",false);
				break
		}
	}
}

//Stop Music
if(keyboard_check_pressed(vk_f9)){
	audio_stop_all();	
}