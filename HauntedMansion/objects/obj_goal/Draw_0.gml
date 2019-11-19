draw_set_alpha(0.50);
draw_set_color(c_aqua);
draw_star(x+16,y+16,32,16,inner_angle,false);
draw_set_alpha(0.30);
draw_set_color(c_white);
draw_star(x+16,y+16,24,12,outer_angle,false);
draw_set_alpha(1);
draw_sprite_ext(spr_ghostItems,global.attempt,x+16,y+16,0.2,0.2,0,c_white,1);