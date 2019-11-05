///@argument x1     |0
///@argument y1     |1
///@argument x2     |2
///@argument y2     |3
///@argument x3     |4
///@argument y3     |5
///@argument x4     |6
///@argument y4     |7
///@argument red    |8
///@argument green  |9
///@argument blue   |10
///@argument alpha  |11
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_set_color(make_color_rgb(argument8*argument11,argument9*argument11,argument10*11));
draw_polygon(x+argument0-VIEW_X,y+argument1-VIEW_Y,x+argument2-VIEW_X,y+argument3-VIEW_Y,x+argument4-VIEW_X,y+argument5-VIEW_Y,x+argument6-VIEW_X,y+argument7-VIEW_Y,false);
surface_reset_target();
gpu_set_blendmode(bm_normal);