//Hit player
if(place_meeting(x,y,obj_player)){
	global.success--;
	//End game
	if(global.success < 0){
		room = rm_conclusion;	
	}
	//Destroy
	instance_destroy();
}