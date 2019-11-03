//Create new particles on timer
rate_timer--;
while(rate_timer <= 0){
	rate_timer = irandom_range(rate_min,rate);	
	ds_list_add(ds_particles_x,irandom(room_width));
	ds_list_add(ds_particles_y,-particle_size);
	ds_list_add(ds_particles_size,irandom_range(particle_size_min,particle_size));
}
//Move particles
for(var i = 0; i < ds_list_size(ds_particles_x); i++){
	ds_list_replace(ds_particles_y,i,ds_list_find_value(ds_particles_y,i)+particle_yspeed);
	if(ds_list_find_value(ds_particles_y,i) > (room_height+particle_size)){
		ds_list_delete(ds_particles_x,i);
		ds_list_delete(ds_particles_y,i);
		ds_list_delete(ds_particles_size,i);
		i--;
	}
}