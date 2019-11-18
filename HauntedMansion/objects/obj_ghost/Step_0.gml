//Add new text
if(text_num > 0){
	if(string_length(text_display) < string_length(text)){
		text_display += string_char_at(text,string_length(text_display)+1);
	}else if(mouse_check_button_released(mb_left) && frame_sprite != spr_cookDisappear){
		text_num++;
		scr_ghosts(ghost_id,text_num);
		text_display = "";
		frame_index = 0;
	}
}

//Animate
scr_animate(3);
if(frame_index == 3){
	if(frame_sprite == spr_cookAppear){
		frame_sprite = spr_cookSpeak;
		text_num = 1;
	}else if(frame_sprite == spr_cookDisappear){
		if(complete){
			scr_levelClear();	
		}
		instance_destroy();
	}
}