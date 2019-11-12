//Add new text
if(text_num > 0){
	if(string_length(text_display) < string_length(text)){
		text_display += string_char_at(text,string_length(text_display)+1);
	}else if(mouse_check_button_released(mb_left)){
		text_num++;
		if(text_num == 2){
			frame_sprite = spr_cookSpeak;
			text = "Line Three\nLine Four";
		}else if(text_num == 3){
			frame_sprite = spr_cookLaugh;
			text = "Line Five\nLine Six";
		}else{
			frame_sprite = spr_cookDisappear;
			text = "";
		}
		text_display = "";
		frame_index = 0;
	}
}

//Animate
scr_animate(3);
if(frame_index == 3){
	if(frame_sprite == spr_cookAppear){
		frame_sprite = spr_cookLaugh;
		text_num = 1;
	}else if(frame_sprite == spr_cookDisappear){
		instance_destroy();
	}
}