///@argument x1    |0
///@argument y1    |1
///@argument x2    |2
///@argument y2    |3
///@argument red   |4
///@argument green |5
///@argument blue  |6
///@argument alpha |7
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_triangle_color(x-VIEW_X+VIEW_BUFFER,y-VIEW_Y+VIEW_BUFFER,argument0-VIEW_X+VIEW_BUFFER,argument1-VIEW_Y+VIEW_BUFFER,argument2-VIEW_X+VIEW_BUFFER,argument3-VIEW_Y+VIEW_BUFFER,make_color_rgb(argument4*argument7,argument5*argument7,argument6*argument7),c_black,c_black,false);
surface_reset_target();
gpu_set_blendmode(bm_normal);