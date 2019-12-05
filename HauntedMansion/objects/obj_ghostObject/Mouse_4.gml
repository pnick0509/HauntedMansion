if(layer_get_visible("Foyer") && visible && !global.branch){
	if(image_index >= 3 && image_index <= 5){
		scr_branchClear(0,scr_textList(0));
		scr_branchAdd(0,"Martha");
		scr_branchAdd(1,"Mortimer");
		scr_branchAdd(2,"Education");
	}else if(image_index >= 0 && image_index <= 2){
		scr_branchClear(0,scr_textList(4));
		scr_branchAdd(6,"Children");
		scr_branchAdd(7,"Boorish Womanizer");
		scr_branchAdd(8,"Revenge");	
	}else if(image_index >= 6 && image_index <= 8){
		scr_branchClear(0,scr_textList(8));
		scr_branchAdd(10,"Papa");
		scr_branchAdd(11,"The Lady");
		scr_branchAdd(12,"Mommy");
	}
	io_clear();
}