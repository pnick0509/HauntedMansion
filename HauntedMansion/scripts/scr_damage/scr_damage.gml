///@argument bool_destroy
//Hit player
if(place_meeting(x,y,obj_player) && obj_player.damage_counter <= 0){
	global.success--;
	//End game
	if(global.success < 0){
		room = rm_conclusion;	
	}
	//Give invincibility frames
	obj_player.damage_counter = DAMAGE_TIME;
	//Destroy
	if(argument0){
		instance_destroy();
	}
}