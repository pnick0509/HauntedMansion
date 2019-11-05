//Basic movement
scr_enemyHorizontal();
//Animate
frame_count++;
while(frame_count >= frame_speed){
	frame_count -= frame_speed;
	frame_index++;
	if(frame_index > 1){
		frame_index = 0;	
	}
}