//Basic movement
scr_horizontalMovement();
scr_verticalMovement();
//Use doors
if(keyboard_check_pressed(vk_up) && place_meeting(x,y,obj_door) && place_meeting(x,floor(y)+1,obj_wall)){
	scr_useDoor();
}
//Reposition Camera
if(instance_exists(obj_camera)){
	obj_camera.x = x;
	obj_camera.y = y-8;
}