//Draw foreground dumbwaiter
with(obj_dumbwaiter){
	draw_sprite(spr_elevator,0,x,y);	
}
//Draw light surface
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,global.drawX-VIEW_BUFFER,global.drawY-VIEW_BUFFER);
gpu_set_blendmode(bm_normal);