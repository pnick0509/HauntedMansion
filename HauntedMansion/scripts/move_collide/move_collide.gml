//The purpose of this function is to attempt to move an object a set amount while colliding with walls
//Returns true if there was a collision
///@argument object   |0
///@argument x_change |1
///@argument y_change |2

with(argument0){
	//Move X
	if(!place_meeting(x+argument1,y+argument2,obj_wall)){
		x += argument1;
		y += argument2;
	}else{
		//Pixel Perfect
		if(argument1 < 0){
			x = ceil(x);
		}else{
			x = floor(x);
		}
		if(argument2 < 0){
			y = ceil(y);
		}else{
			y = floor(y);
		}
		//Do Movements
		while(!place_meeting(x+sign(argument1),y+sign(argument2),obj_wall)){
			x += sign(argument1);
			y += sign(argument2);
		}
		return true;
	}
}
return false;