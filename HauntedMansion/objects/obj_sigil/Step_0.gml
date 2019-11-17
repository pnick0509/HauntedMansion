sigil_micros -= delta_time;
while(sigil_micros < 0){
	sigil_micros += 1000000;
	sigil_counter--;
}
if(sigil_counter <= 0){
	instance_destroy();	
}