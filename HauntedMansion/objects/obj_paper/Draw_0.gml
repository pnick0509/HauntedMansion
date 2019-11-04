#macro ROTATE_X sin(degtorad(image_angle))
#macro ROTATE_Y cos(degtorad(image_angle))

draw_self();
draw_set_font(fnt_title);
draw_set_color(c_black);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_text_transformed(x-84*ROTATE_X,y-84*ROTATE_Y,title_text,1,1,image_angle);

draw_sprite_ext(spr_paperImage,paper_image,x-24*ROTATE_X,y-24*ROTATE_Y,1,1,image_angle,c_white,1);

draw_set_font(fnt_description);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_transformed(x-((sprite_width/2)-4)*ROTATE_Y+46*ROTATE_X,y+((sprite_width/2)-4)*ROTATE_X+46*ROTATE_Y,desc_text,1,1,image_angle);