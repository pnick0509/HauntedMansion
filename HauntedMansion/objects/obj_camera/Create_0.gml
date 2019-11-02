if(room == rm_boot){
	room = rm_foyer;
}else{
	instance_destroy();	
}

#macro VIEW_WIDTH camera_get_view_width(view_camera[0])
#macro VIEW_HEIGHT camera_get_view_height(view_camera[0])
#macro VIEW_X camera_get_view_x(view_camera[0])
#macro VIEW_Y camera_get_view_y(view_camera[0])
global.light = surface_create(VIEW_WIDTH,VIEW_HEIGHT);