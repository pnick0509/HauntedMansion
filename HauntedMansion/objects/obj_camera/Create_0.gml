//Randomize
randomize();
//Goto starting room
if(room == rm_boot){
	room = rm_foyer;
}else{
	instance_destroy();	
}
//Create light
#macro VIEW_WIDTH camera_get_view_width(view_camera[0])
#macro VIEW_HEIGHT camera_get_view_height(view_camera[0])
#macro VIEW_X camera_get_view_x(view_camera[0])
#macro VIEW_Y camera_get_view_y(view_camera[0])
#macro VIEW_BUFFER 64
#macro BRIGHTNESS 200
	//Brightness used to be 230
global.light = surface_create(VIEW_WIDTH+VIEW_BUFFER*2,VIEW_HEIGHT+VIEW_BUFFER*2);
//Light Draw
global.drawX = VIEW_X;
global.drawY = VIEW_Y;
//Create main variables
global.ghost = 0; //Which ghost the player is working on saving
global.success = 0; //How many ghosts were saved
global.attempt = 0; //Item attempting to retrieve
global.ds_items = ds_list_create(); //List of collected items
global.hint_text = "Hint Text";//Text for hint
global.answer = 0; //The answer to a hint
//Transitions
global.transition_id = -1; //-1 for no transition
global.transition_timer = 0; //Count down until transition finished
global.transition_surface = surface_create(VIEW_WIDTH*2,VIEW_HEIGHT*2);
#macro TRANSITION_TIME 50 //Speed of transition animations
//Double Tap
globalvar keyboard_lasttime;
keyboard_lasttime = 0;
#macro LASTTIME_LIMIT 216000
global.keyboard_lastpressed = noone;
globalvar doubleTap;
doubleTap = false;
//Boss Timer
bossMinutes = 1;
bossSeconds = 0;
bossMicro = 0;
//Start Music
audio_play_sound(snd_music,1,true);
//Dialogue
global.branch = false;
global.branchSelect = -1;
global.ds_branchAction = ds_list_create();
global.ds_branchText = ds_list_create();