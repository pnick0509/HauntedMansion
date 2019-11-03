for(var i = 0; i < ds_list_size(ds_particles_x); i++){
	scr_light(ds_list_find_value(ds_particles_x,i),ds_list_find_value(ds_particles_y,i),ds_list_find_value(ds_particles_size,i),particle_red,particle_green,particle_blue,particle_alpha);
}