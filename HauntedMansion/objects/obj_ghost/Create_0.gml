#macro BAR_WIDTH 80
text = "Line One\nLine Two";
text_display = "";
text_num = 0;
#macro TEXT_WIGGLE 1
#macro BORDER_START 1
#macro BORDER_END 3

//Animation
frame_sprite = spr_cookAppear; //sprite_index
frame_index = 0; //image_index
frame_speed = 10; //Frames before next index
frame_count = 0; //Counter for frame_speed