//VERTICAL MOVEMENT
vel_y = 0; //The change in y every step
#macro GRAVITY_ACC 0.4 //The amount added to vel_y every step
#macro GRAVITY_MAX 6 //The highest possible vel_y
#macro VEL_JUMP -8 //The number that vel_y is set to for jumping.
climbing = false; //Boolean to determine if climbing ladder
#macro CLIMB_UP 1
#macro CLIMB_DOWN 2
//HORIZONTAL MOVEMENT
vel_x = 0; //The change in x every step
#macro WALK_SPEED 3 //The amount moved when walked
dash_count = 0; //Time left dashing
#macro DASH_TIME 30
#macro DASH_SPEED 6
//ANIMATE
frame_sprite = spr_playerIdle; //sprite_index
frame_index = 0; //image_index
frame_speed = 10; //Frames before next index
frame_count = 0; //Counter for frame_speed
frame_xscale = 1; //image_xscale
//SIGIL
sigil_counter = 0;
#macro SIGIL_TIME 90
//DAMAGE COOLDOWN
damage_counter = 0;
#macro DAMAGE_TIME 30