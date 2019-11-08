//Movement
if(!place_meeting(x+vel_x,y,obj_wall)){
	x += vel_x;
}else{
	vel_x *= -1;	
}
//Do timer
counter--;
if(counter <= 0){
	instance_create_layer(x,y,layer,obj_moneyBag);	
	counter = 60*4;
}