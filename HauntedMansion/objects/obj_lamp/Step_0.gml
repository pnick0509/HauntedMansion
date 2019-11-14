frame_counter--;
if(frame_counter <= 0){
	frame_counter = frame_speed;
	frame_index++;
	if(frame_index >= 10){
		frame_index = 0;	
	}
}