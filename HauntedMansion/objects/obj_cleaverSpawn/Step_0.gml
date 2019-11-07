counter--;
if(counter <= 0){
	counter = cleaver_time;
	if(x > VIEW_X+VIEW_WIDTH){
		instance_create_layer(x,y,layer,obj_cleaver);	
	}
}