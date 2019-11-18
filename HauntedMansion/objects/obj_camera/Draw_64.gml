//Draw transition surface
if(global.transition_id != -1 && surface_exists(global.transition_surface)){
	draw_surface(global.transition_surface,0,0);
}

//Show fps
draw_set_color(c_fuchsia);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(!keyboard_check(vk_control)){
	draw_text(2,32,fps);
}
//Draw hint text in foyer
if(room == rm_foyer){
	scr_drawFoyer();
}else if(room == rm_conclusion){
	//Draw final results
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_title);
	draw_set_color(c_lime);
	if(global.success < 0){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2,string("Bad Ending"));	
	}else if(global.success == 3){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2,"Perfect!"+string(global.success)+"/"+string(global.ghost));
	}else{
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2,string(global.success)+"/"+string(global.ghost));
	}
}

//Draw health
if(room == rm_boss){
	for(var i = 0; i <= global.success; i++){
		draw_sprite(spr_heart,i,2+(34*i),2);
	}

	//Draw Clock
	draw_set_color(c_fuchsia);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if(bossSeconds >= 10){
		draw_text(2,64,string(bossMinutes)+":"+string(bossSeconds));
	}else{
		draw_text(2,64,string(bossMinutes)+":0"+string(bossSeconds));
	}
}