//Change stats
global.ghost++;
if(global.attempt == global.answer){
	global.success++;
}
//Get item
ds_list_add(global.ds_items,global.attempt);
//Return to foyer
room = rm_foyer;