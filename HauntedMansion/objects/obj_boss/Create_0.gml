boss_attack = 0;//6;
timer = 120;
goal_x = x;
start_y = y;

#macro BOSS_DESCEND 4
#macro BOSS_ASCEND 3
#macro BOSS_DISTANCE 96
#macro BOSS_FLOAT 3
#macro BOSS_DASH 3

//Animation
frame_sprite = spr_bossAppear; //sprite_index
frame_index = 0; //image_index
frame_speed = 10; //Frames before next index
frame_count = 0; //Counter for frame_speed