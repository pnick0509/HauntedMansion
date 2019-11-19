if(image_yscale == 1){
	draw_sprite_color(spr_barrier,0,x,y,c_fuchsia);
}else{
	draw_sprite_color(spr_barrier,3,x,y,c_fuchsia);
	draw_sprite_color(spr_barrier,1,x,y-((image_yscale-1)*16),c_fuchsia);
	for(var i = 1; i < image_yscale-1; i++){
		draw_sprite_color(spr_barrier,2,x,y-(i*16),c_fuchsia);	
	}
}