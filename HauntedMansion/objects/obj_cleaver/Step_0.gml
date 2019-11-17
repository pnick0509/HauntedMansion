//Rotate and move
image_angle += 10*rotate;
x -= 4*rotate;
//Destroy if hits wall
if(place_meeting_list(x,y,obj_wall,obj_sigil)){
	instance_destroy();	
}