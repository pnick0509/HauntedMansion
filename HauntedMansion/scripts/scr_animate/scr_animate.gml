///@argument max_frame
frame_count++;
while(frame_count >= frame_speed){
	frame_count -= frame_speed;
	frame_index++;
	while(frame_index > (argument0+1)){
		frame_index -= (argument0+1);	
	}
}