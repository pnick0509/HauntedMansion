//Adjust flicker
flicker_alpha += random_range(-flicker_change,flicker_change);
if(flicker_alpha < flicker_min){
	flicker_alpha = flicker_min;	
}else if(flicker_alpha > flicker_max){
	flicker_alpha = flicker_max;	
}