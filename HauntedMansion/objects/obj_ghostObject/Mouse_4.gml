if(layer_get_visible("Foyer") && visible && !global.branch){
	if(image_index >= 3 && image_index <= 5){
		scr_branchClear(0,scr_textList(0));
		scr_branchAdd(0,"Martha");
		scr_branchAdd(1,"Mortimer");
		scr_branchAdd(2,"Education");
	}
}