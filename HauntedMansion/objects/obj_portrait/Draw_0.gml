draw_sprite(spr_portrait,1,x,y);
draw_sprite(spr_portrait,2,x,y);
draw_sprite(spr_portrait,0,x,y);

draw_set_color(c_black);
var angle = point_direction(x,y,obj_player.x,obj_player.y-(obj_player.sprite_height/2));
if(angle <= 22.5 || angle >= 360-22.5){
	draw_rectangle(x,y-3,x+1,y-2,false);
	draw_rectangle(x+9,y-3,x+10,y-2,false);
}else if(angle <= 22.5+45){
	draw_rectangle(x,y-3,x+1,y-3,false);
	draw_rectangle(x+9,y-3,x+10,y-3,false);
}else if(angle <= 22.5+90){
	draw_rectangle(x-1,y-3,x,y-3,false);
	draw_rectangle(x+8,y-3,x+9,y-3,false);
}else if(angle <= 22.5+90+45){
	draw_rectangle(x-2,y-3,x-1,y-3,false);
	draw_rectangle(x+8,y-3,x+8,y-3,false);	
}else if(angle <= 22.5+180){
	draw_rectangle(x-2,y-3,x-1,y-2,false);
	draw_rectangle(x+8,y-3,x+8,y-2,false);	
}else if(angle <= 22.5+180+45){
	draw_rectangle(x-2,y-2,x-1,y-2,false);
	draw_rectangle(x+8,y-2,x+8,y-2,false);	
}else if(angle <= 22.5+180+90){
	draw_rectangle(x-1,y-2,x,y-2,false);
	draw_rectangle(x+8,y-2,x+9,y-2,false);	
}else{
	draw_rectangle(x,y-2,x+1,y-2,false);
	draw_rectangle(x+9,y-2,x+10,y-2,false);	
}