///@argument question_id
///@argument question_text

//Clear
ds_list_clear(global.ds_branchText);
ds_list_clear(global.ds_branchAction);

//Write
ds_list_add(global.ds_branchText,argument1);
ds_list_add(global.ds_branchAction,argument0);

//Active branch
global.branch = true;