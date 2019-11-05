//Setup light each frame
if(!surface_exists(global.light)){
	global.light = surface_create(VIEW_WIDTH,VIEW_HEIGHT);
}
surface_set_target(global.light);
draw_set_color(make_color_rgb(230,230,230));
draw_rectangle(0,0,VIEW_WIDTH,VIEW_HEIGHT,false);
surface_reset_target();
//Move
global.drawX = VIEW_X;
global.drawY = VIEW_Y;