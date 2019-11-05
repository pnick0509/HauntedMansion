//VERTICAL MOVEMENT
vel_y = 0; //The change in y every step
//HORIZONTAL MOVEMENT
vel_x = 1; //The change in x every step
if(image_xscale < 0){
	vel_x *= -1;	
}
//ANIMATE
frame_index = 0;
frame_speed = 10;
frame_count = 0;