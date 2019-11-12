///@argument attack_id
boss_attack = argument0;
if(argument0 == 0){
	goal_x = obj_player.x;
	if(goal_x > x){
		image_xscale = 1;	
	}else if(goal_x < x){
		image_xscale = -1;
	}
}else if(argument0 == 1){
	instance_create_layer(x,y,layer,obj_moneyBag);
	timer = 60;
}else if(argument0 == 4){
	if(obj_player.x > x){
		image_xscale = 1;	
	}else if(obj_player.x > x){
		image_xscale = -1;
	}
}