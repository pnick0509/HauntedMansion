//Change stats
global.ghost++;
global.success++;
//Get item
ds_list_add(global.ds_items,global.attempt);
//Return to foyer
if(global.ghost < 3){
	room = rm_foyer;
}else{
	room = rm_conclusion;	
}