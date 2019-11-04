//Randomize
randomize();
//Goto starting room
if(room == rm_boot){
	room = rm_foyer;
}else{
	instance_destroy();	
}
//Create light
#macro VIEW_WIDTH camera_get_view_width(view_camera[0])
#macro VIEW_HEIGHT camera_get_view_height(view_camera[0])
#macro VIEW_X camera_get_view_x(view_camera[0])
#macro VIEW_Y camera_get_view_y(view_camera[0])
global.light = surface_create(VIEW_WIDTH,VIEW_HEIGHT);
//Create main variables
global.ghost = 0; //Which ghost the player is working on saving
global.success = 0; //How many ghosts were saved
global.attempt = 0; //Item attempting to retrieve
global.ds_items = ds_list_create(); //List of collected items