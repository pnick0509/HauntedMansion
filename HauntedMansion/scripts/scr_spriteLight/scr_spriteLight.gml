///@argument x      |0
///@argument y      |1
///@argument sprite |2
///@argument index  |3
///@argument red    |4
///@argument green  |5
///@argument blue   |6
///@argument alpha  |7
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_sprite_ext(argument2,argument3,argument0-VIEW_X,argument1-VIEW_Y,1,1,0,make_color_rgb(argument4*argument7,argument5*argument7,argument6*argument7),1);
surface_reset_target();
gpu_set_blendmode(bm_normal);