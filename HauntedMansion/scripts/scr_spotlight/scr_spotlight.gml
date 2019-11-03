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
draw_set_alpha(argument7);
draw_triangle_color(x,y,argument0,argument1,argument2,argument3,make_color_rgb(argument4,argument5,argument6),c_black,c_black,false);
draw_set_alpha(1);
surface_reset_target();
gpu_set_blendmode(bm_normal);