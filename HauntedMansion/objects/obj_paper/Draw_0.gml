#macro ROTATE_X sin(degtorad(image_angle))
#macro ROTATE_Y cos(degtorad(image_angle))

draw_self();
draw_sprite_ext(spr_ghostItems,paper_image,x,y,2,2,image_angle,c_white,1);

draw_set_font(fnt_description);
draw_set_color(c_black);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_text_transformed(x+85*ROTATE_X,y+85*ROTATE_Y,title_text,1,1,image_angle);