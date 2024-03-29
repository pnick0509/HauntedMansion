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

//Do main menu
if(room == rm_title && global.transition_id == -1){
	if(mouse_check_button_pressed(mb_left)){
		if(!instruction && !settings){
			if(mouse_check_range(620+32,450-32-96-96-96,971-32,450+32-96-96-96)){ //New game
				scr_setTransition(3);
			}else if(mouse_check_range(620+32,450-32-96-96,971-32,450+32-96-96)){ //About
				instruction = true;
			}else if(mouse_check_range(620+32,450-32-96,971-32,450+32-96)){ //Settings
				settings = true;
			}else if(mouse_check_range(620+32,450-32,971-32,450+32)){ //Quit
				game_end();
			}
		}else if(instruction){
			instruction = false;	
		}else{
			if(mouse_check_range(32,32+64,96,96+64)){
				
			}else if(mouse_check_range(192,32+64,192+64,96+64)){
			
			}else{
				settings = false;
			}
		}
	}else if(mouse_check_button(mb_left)){
		if(settings){
			if(mouse_check_range(32,32+64,96,96+64)){
				global.brightnessSetting--;
				if(global.brightnessSetting < 0){
					global.brightnessSetting = 0;	
				}
			}else if(mouse_check_range(192,32+64,192+64,96+64)){
				global.brightnessSetting++;
				if(global.brightnessSetting > 100){
					global.brightnessSetting = 100;	
				}
			}
		}
	}
}

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
				break;
			//Maid
			case 6:
				scr_branchClear(0,scr_textList(5));
				scr_branchAdd(9,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 7:
				scr_branchClear(0,scr_textList(6));
				scr_branchAdd(9,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 8:
				scr_branchClear(0,scr_textList(7));
				scr_branchAdd(9,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 9:
				scr_branchClear(0,scr_textList(4));
				scr_branchAdd(6,"Children");
				scr_branchAdd(7,"Boorish Womanizer");
				scr_branchAdd(8,"Revenge");
				break;
			//Child
			case 10:
				scr_branchClear(0,scr_textList(9));
				scr_branchAdd(13,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 11:
				scr_branchClear(0,scr_textList(10));
				scr_branchAdd(13,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 12:
				scr_branchClear(0,scr_textList(11));
				scr_branchAdd(13,"Hear More");
				scr_branchAdd(4,"To Foyer");
				scr_branchAdd(5,"To Table");
				break;
			case 13:
				scr_branchClear(0,scr_textList(8));
				scr_branchAdd(10,"Papa");
				scr_branchAdd(11,"The Lady");
				scr_branchAdd(12,"Mommy");
				break;
		}
	}
}

//Stop Music
//if(keyboard_check_pressed(vk_f9)){
//	audio_stop_all();	
//}

//Do parallax
#macro PARALLAX_MODIFIER 70
if(layer_exists("Parallax")){
	layer_x("Parallax",obj_player.x/PARALLAX_MODIFIER);	
}

//Do conclude
if(room == rm_conclusion){
	global.concludeY += CONCLUDE_RATE;	
}