if(active == -1 && sprite_index == spr_plate){
	scr_light(x,y-1,48,20,245,255,0.2);
}else if(active != -1 && sprite_index == spr_plate){
	scr_light(x,y,48,20,245,255,0.5);
}else if(sprite_index == spr_plateShatter){
	scr_light(x,y,480*(image_index/2)+48,20,245,255,0.5-0.5*(image_index/2));
}