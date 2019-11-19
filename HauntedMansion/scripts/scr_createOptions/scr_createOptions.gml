var ds_select = ds_list_create();
//Get set of clippings
if(global.ghost == 0){
	ds_list_add(ds_select,0);
	ds_list_add(ds_select,1);
	ds_list_add(ds_select,2);
}else if(global.ghost == 1){
	ds_list_add(ds_select,3);
	ds_list_add(ds_select,4);
	ds_list_add(ds_select,5);
}else if(global.ghost == 2){
	ds_list_add(ds_select,6);
	ds_list_add(ds_select,7);
	ds_list_add(ds_select,8);	
}else if(global.ghost == 3){
	ds_list_add(ds_select,9);
	ds_list_add(ds_select,9);
	ds_list_add(ds_select,10);
}
//Choose clippings
with(obj_paper){
	var choice = irandom(ds_list_size(ds_select)-1);
	scr_newspaperPresets(id,ds_list_find_value(ds_select,choice));
	ds_list_delete(ds_select,choice);
}
ds_list_destroy(ds_select);