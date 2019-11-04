//Change stats
global.ghost++;
//Return to foyer
if(global.ghost < 3){
	room = rm_foyer;
}else{
	room = rm_conclusion;	
}