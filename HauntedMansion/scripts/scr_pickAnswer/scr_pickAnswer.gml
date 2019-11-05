//Get pool of possible answers and select one
var ds_answers = ds_list_create();
with(obj_paper){
	ds_list_add(ds_answers,paper_image);
}
global.answer = ds_list_find_value(ds_answers,irandom(ds_list_size(ds_answers)-1));
ds_list_destroy(ds_answers);