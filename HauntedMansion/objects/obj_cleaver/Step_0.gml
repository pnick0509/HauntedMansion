//Rotate and move
image_angle += 10;
x -= 4;
//Destroy if hits wall
if(place_meeting(x,y,obj_wall)){
	instance_destroy();	
}