image_speed = 0;
dropping = true;
#macro DROPPER_DOWN 3
#macro DROPPER_UP 1

//Calculate string placement
var start_y = y;
while(!place_meeting(x,y-1,obj_wall)){
	y--;
	if(y < 0){
		show_debug_message("WARNING: DROPPER OUT OF BOUNDS; DELETING");
		instance_destroy();
	}
}
top_y = y-(sprite_height/2)-1;
y = start_y;