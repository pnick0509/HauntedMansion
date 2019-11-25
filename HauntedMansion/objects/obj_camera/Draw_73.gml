//Draw foreground dumbwaiter
with(obj_dumbwaiter){
	draw_sprite(spr_elevator,0,x,y);	
}
//Draw main menu
if(room = rm_title){
	if(!instruction){
		draw_sprite_ext(spr_titlescreen,0,0,0,4,4,0,c_white,1);	
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(620,32,971,543,false);
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_rectangle_width(620,32,971,543,4);
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_logo);
		draw_text(795,450-96-96-96,"Polterheist");
		draw_set_font(fnt_title);
		draw_rectangle_width(620+32,450-32-96-96,971-32,450+32-96-96,4);
		draw_text(795,450-96-96,"New Game");
		draw_rectangle_width(620+32,450-32-96,971-32,450+32-96,4);
		draw_text(795,450-96,"About");
		draw_rectangle_width(620+32,450-32,971-32,450+32,4);
		draw_text(795,450,"Quit");
	}else{
		draw_sprite(spr_instructions,0,0,0);	
	}
}
//Draw light surface
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,global.drawX-VIEW_BUFFER,global.drawY-VIEW_BUFFER);
gpu_set_blendmode(bm_normal);