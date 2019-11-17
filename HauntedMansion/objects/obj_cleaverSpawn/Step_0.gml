counter--;
if(counter <= 0){
	counter = cleaver_time;
	if(image_xscale != -1){
		if(x > VIEW_X+VIEW_WIDTH){
			var new = instance_create_layer(x,y,layer,obj_cleaver);	
			new.rotate = 1;
		}
	}else{
		if(x < VIEW_X){
			var new = instance_create_layer(x,y,layer,obj_cleaver);	
			new.rotate = -1;
			new.image_xscale = -1;
		}
	}
}