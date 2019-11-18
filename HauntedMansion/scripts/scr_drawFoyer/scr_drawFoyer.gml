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