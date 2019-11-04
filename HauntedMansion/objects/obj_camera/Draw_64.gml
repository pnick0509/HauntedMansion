//Show fps
draw_set_color(c_fuchsia);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(2,2,fps);
//Draw hint text in foyer
if(room == rm_foyer){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_title);
	draw_set_color(c_black);
	draw_text(VIEW_WIDTH/2,450,"Hint text");
	
	//Draw temp items
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_title);
	draw_set_color(c_lime);
	draw_text(100,100,string(global.success)+"/"+string(global.ghost));
}else if(room == rm_conclusion){
	//Draw final results
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_title);
	draw_set_color(c_lime);
	draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2,string(global.success)+"/"+string(global.ghost));
}