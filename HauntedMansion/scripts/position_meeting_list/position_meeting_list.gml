if(argument_count >= 3){
	for(var i = 2; i < argument_count; i++){
		if(position_meeting(argument[0],argument[1],argument[i])){
			return true;	
		}
	}
	return false;
}else{
	show_error("position_meeting_list needs atleast 3 arguments", true);
}