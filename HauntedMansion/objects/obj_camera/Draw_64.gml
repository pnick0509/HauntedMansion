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
	if(layer_get_visible("Table")){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_title);
		draw_set_color(c_white);
		draw_text(VIEW_WIDTH/2,450,global.hint_text);
	}else if(global.branch){
		draw_set_color(c_black);
		draw_set_alpha(0.7);
		draw_rectangle(0,0,VIEW_WIDTH,VIEW_HEIGHT,false);
		draw_set_alpha(1);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_description);
		draw_set_color(c_white);
		draw_text(VIEW_WIDTH/2,180,ds_list_find_value(global.ds_branchText,0));
		
		selectionColor(global.branchSelect,0,c_red,c_white);
		draw_rectangle(VIEW_WIDTH/2-256,350,VIEW_WIDTH/2+256,400,true);
		draw_text(VIEW_WIDTH/2,375,ds_list_find_value(global.ds_branchText,1));
		
		selectionColor(global.branchSelect,1,c_red,c_white);
		draw_rectangle(VIEW_WIDTH/2-256,425,VIEW_WIDTH/2+256,475,true);
		draw_text(VIEW_WIDTH/2,450,ds_list_find_value(global.ds_branchText,2));
		
		selectionColor(global.branchSelect,2,c_red,c_white);
		draw_rectangle(VIEW_WIDTH/2-256,500,VIEW_WIDTH/2+256,550,true);
		draw_text(VIEW_WIDTH/2,525,ds_list_find_value(global.ds_branchText,3));
	}
	
	//Draw temp items
	/*draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_title);
	draw_set_color(c_lime);
	draw_text(100,100,string(global.success)+"/"+string(global.ghost));*/
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