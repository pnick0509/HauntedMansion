//Draw ghost items under light in foyer
if(room == rm_foyer){
	for(var i = 0; i < ds_list_size(global.ds_items); i++){
		draw_ghostItem(ds_list_find_value(global.ds_items,i));
	}
}
//Draw light surface
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,VIEW_X,VIEW_Y);
gpu_set_blendmode(bm_normal);