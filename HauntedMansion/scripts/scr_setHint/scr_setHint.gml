//Set hint
if(global.answer == 0){
	global.hint_text = "Maid 1";
}else if(global.answer == 1){
	global.hint_text = "Maid 2";
}else if(global.answer == 2){
	global.hint_text = "Maid 3";
}else if(global.answer == 3){
	global.hint_text = choose(
	"Shaped like a dome and holds a head,\nproducing green, white, or red.",
	"Two mouths to feed since you tied the knot,\nyou’ll feel some heat and stir the pot.",
	"Ursa Major, Ursa Minor, made with metal,\nyou’ll find none finer.");
}else if(global.answer == 4){
	global.hint_text = choose(
	"They just can’t stay out of your hair,\ngets on your mind and stays right there.",
	"Round, and round, the circle complete,\nremember me when time to eat.",
	"Tempered metal never fails,\nyou share your pleasures and your ails.");
}else if(global.answer == 5){
	global.hint_text = choose(
	"A symbol now, white mark of status,\nfor all to see when looking at us.",
	"You’ll find me when the kitchen’s hot,\nwith frying pans and boiling pots.",
	"Short or tall or thin or fat,\nwith this you’ll find it’s all old hat.");
}else if(global.answer == 6){
	global.hint_text = "Light Blue";
}else if(global.answer == 7){
	global.hint_text = "Blue";
}else if(global.answer == 8){
	global.hint_text = "Purple";
}