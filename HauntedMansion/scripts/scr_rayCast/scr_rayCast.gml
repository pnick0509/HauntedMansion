///@argument x1
///@argument y1
///@argument x2
///@argument y2
///@argument object
///@argument percise

//Define variables
var ds_ray = ds_list_create();
var result = noone;
//Calculate
collision_line_list(argument0,argument1,argument2,argument3,argument4,argument5,true,ds_ray,true);
if(ds_list_size(ds_ray) > 0){
	result = ds_list_find_value(ds_ray,0);	
}
//Clean Up
ds_list_destroy(ds_ray);
//Return
return result;