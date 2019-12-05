//Draw foreground dumbwaiter
with(obj_dumbwaiter){
	draw_sprite(spr_elevator,0,x,y);	
}
//Draw main menu
if(room = rm_title){
	if(!instruction && !settings){
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
		draw_sprite_ext(spr_title,0,795,450-96-96-96-96,0.5,0.5,0,c_white,1);
		//draw_text(795,450-96-96-96,"Polterheist");
		draw_set_font(fnt_title);
		draw_rectangle_width(620+32,450-32-96-96-96,971-32,450+32-96-96-96,4);
		draw_text(795,450-96-96-96,"New Game");
		draw_rectangle_width(620+32,450-32-96-96,971-32,450+32-96-96,4);
		draw_text(795,450-96-96,"About");
		draw_rectangle_width(620+32,450-32-96,971-32,450+32-96,4);
		draw_text(795,450-96,"Settings");
		draw_rectangle_width(620+32,450-32,971-32,450+32,4);
		draw_text(795,450,"Quit");
	}else if(instruction){
		draw_sprite(spr_instructions,0,0,0);	
		draw_set_font(fnt_ghost);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);
		draw_text(8,VIEW_HEIGHT-6,"By Ghost House Productions 2019\n • Brandon Horton\n • Michael Johnson\n • Charlie Lewis\n • Preston Nichols");
	}else{
		draw_set_color(c_white);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_title);
		draw_set_halign(fa_left);
		draw_text(64,64,"Brightness");
		draw_set_halign(fa_center);
		draw_rectangle_width(32,32+64,96,96+64,4);
		draw_text(64,64+64,"<");
		draw_rectangle_width(192,32+64,192+64,96+64,4);
		draw_text(192+32,64+64,">");
		draw_text(144,64+64,global.brightnessSetting);
		
		draw_set_font(fnt_ghost);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);
		draw_text(8,VIEW_HEIGHT-6,"Click anywhere to return to the title screen.");
	}
}
//Draw light surface
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,global.drawX-VIEW_BUFFER,global.drawY-VIEW_BUFFER);
gpu_set_blendmode(bm_normal);