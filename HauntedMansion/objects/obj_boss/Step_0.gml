if(frame_sprite != spr_bossAppear){
	//Decrement Timer
	if(timer > 0){
		timer--;
	}
	//Do attacks
	if(boss_attack == 0){ //Go to player
		if(x < goal_x){
			if(move_collide(id,BOSS_FLOAT,0)){
				goal_x = x;	
			}else if(x > goal_x){
				goal_x = x;	
			}
		}else if(x > goal_x){
			if(move_collide(id,BOSS_FLOAT*-1,0)){
				goal_x = x;	
			}else if(x < goal_x){
				goal_x = x;	
			}
		}
		//Next attack
		if(x == goal_x){
			if(abs(obj_player.x-x) <= BOSS_DISTANCE){
				scr_attack(1);
			}else{
				scr_attack(2);	
			}
		}
	}else if(boss_attack == 1){ //Drop Money
		//Next attack
		if(timer <= 0){
			scr_attack(0);	
		}
	}else if(boss_attack == 2){
		if(!place_meeting(x,y+BOSS_DESCEND,obj_wall)){
			y += BOSS_DESCEND;	
		}else{
			y = floor(y);
			while(!place_meeting(x,y+1,obj_wall)){
				y++;	
			}
			instance_create_layer(x,y,layer,obj_waveAttack);
			var new = instance_create_layer(x,y,layer,obj_waveAttack);
			new.image_xscale *= -1;
			//Next attack
			scr_attack(choose(4,3));
		}
	}else if(boss_attack == 3){
		y -= BOSS_ASCEND;
		if(y <= start_y){
			y = start_y;	
			//Next attack
			scr_attack(0);
		}
	}else if(boss_attack == 4){
		if(!place_meeting(x+image_xscale*BOSS_DASH,y,obj_wall)){
			x += image_xscale*BOSS_DASH;
		}else{
			scr_attack(3);	
		}
	}
	//Damage player
	scr_damage(false);
}

//Animate
if(frame_sprite == spr_bossAppear){
	scr_animate(11);
	if(frame_index == 11){
		frame_sprite = spr_bossSpeak;
	}
}else{
	scr_animate(3);	
}