///@argument x      |0
///@argument y      |1
///@argument radius |2
///@argument red    |3
///@argument green  |4
///@argument blue   |5
///@argument alpha  |6
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_ellipse_color(argument0-argument2/2-VIEW_X,argument1-argument2/2-VIEW_Y,argument0+argument2/2-VIEW_X,argument1+argument2/2-VIEW_Y,make_color_rgb(argument3*argument6,argument4*argument6,argument5*argument6),c_black,false);
surface_reset_target();
gpu_set_blendmode(bm_normal);