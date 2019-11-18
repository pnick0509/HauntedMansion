#macro BAR_WIDTH 80
//text = "I wasn’t meant to be here!";
text_display = "";
text_num = 1;
#macro TEXT_WIGGLE 1
#macro BORDER_START 1
#macro BORDER_END 3
complete = false;

//Animation
//frame_sprite = spr_cookAppear; //sprite_index
frame_index = 0; //image_index
frame_speed = 10; //Frames before next index
frame_count = 0; //Counter for frame_speed

//show_message(ghost_id);
scr_ghosts(ghost_id,text_num);