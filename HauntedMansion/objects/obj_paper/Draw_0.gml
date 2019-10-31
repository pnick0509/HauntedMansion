draw_self();
draw_set_font(fnt_title);
draw_set_color(c_blue);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_text(x+(sprite_width/2),y+4,title_text);

draw_sprite(spr_paperImage,paper_image,x+(sprite_width/2),y+42);

draw_set_font(fnt_description);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(x+4,y+174,desc_text);