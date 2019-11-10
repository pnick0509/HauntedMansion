//Movement
if(boss_attack == 1){
	if(!place_meeting(x+vel_x,y,obj_wall)){
		x += vel_x;
	}else{
		vel_x *= -1;	
	}
}else if(boss_attack == 2){
	if(!place_meeting(x,y+BOSS_DESCEND,obj_wall)){
		y += BOSS_DESCEND;	
	}else{
		y = floor(y);
		while(!place_meeting(x,y+1,obj_wall)){
			y++;
		}
	}
}else if(boss_attack == 3){
	if(y > start_y){
		y -= BOSS_DESCEND;	
	}else{
		y = start_y;
	}
}
//Do timer
counter--;
if(counter <= 0){
	if(boss_attack == 0){
		var newBag;
		repeat(3){
			newBag = instance_create_layer(x,y,layer,obj_moneyBag);	
			newBag.vel_x = irandom_range(-3,3);
		}
		boss_attack = 1;
		counter = BOSS_TIME;
	}else if(boss_attack == 1){
		if(irandom(1) == 0){
			boss_attack = 0;	
			counter = 30;
		}else{
			boss_attack = 2;	
			counter = 120;
		}
	}else if(boss_attack == 2){
		boss_attack = 3;
		counter = 120;
		var new = instance_create_layer(x,y,layer,obj_waveAttack);
		new = instance_create_layer(x,y,layer,obj_waveAttack);
		new.image_xscale *= -1;
	}else if(boss_attack == 3){
		boss_attack = 1;
		counter = 120;
	}
}
//Hit player
scr_damage();