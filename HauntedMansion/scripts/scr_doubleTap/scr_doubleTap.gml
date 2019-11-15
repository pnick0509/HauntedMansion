doubleTap = false;
if(keyboard_check_pressed(vk_anykey)){
	if(global.keyboard_lastpressed == keyboard_key && keyboard_lasttime < 20){
		doubleTap = true;
	}
	keyboard_lasttime = 0;
	global.keyboard_lastpressed = keyboard_key;
}else{
	keyboard_lasttime++;
	if(keyboard_lasttime > LASTTIME_LIMIT){
		keyboard_lasttime = LASTTIME_LIMIT;	
	}
}