//Draw ghost items under light in foyer
//if(room == rm_foyer || room == rm_conclusion){
//	for(var i = 0; i < ds_list_size(global.ds_items); i++){
//		draw_ghostItem(ds_list_find_value(global.ds_items,i));
//	}
//}
//Draw light surface
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,global.drawX-VIEW_BUFFER,global.drawY-VIEW_BUFFER);
gpu_set_blendmode(bm_normal);