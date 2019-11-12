draw_set_color(c_black);
//draw_rectangle(VIEW_WIDTH*2-64,0,VIEW_WIDTH*2,VIEW_HEIGHT*2,false);
//draw_rectangle(0,0,64,VIEW_HEIGHT*2,false);
draw_rectangle(0,0,VIEW_WIDTH*2,BAR_WIDTH,false);
draw_rectangle(0,VIEW_HEIGHT*2-BAR_WIDTH,VIEW_WIDTH*2,VIEW_HEIGHT*2,false);

draw_set_font(fnt_ghost);
draw_set_valign(fa_left);
draw_set_halign(fa_top);
//Draw Outline
draw_set_color(c_black);
draw_text(64+random_range(BORDER_START,BORDER_END),BAR_WIDTH+32+random_range(BORDER_START,BORDER_END),text_display);
draw_text(64-random_range(BORDER_START,BORDER_END)+1,BAR_WIDTH+32-random_range(BORDER_START,BORDER_END)+1,text_display);
//Draw Text
draw_set_color(c_white);
draw_text(64+random_range(0,TEXT_WIGGLE),BAR_WIDTH+32+random_range(0,TEXT_WIGGLE),text_display);