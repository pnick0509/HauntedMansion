///@argument object
///@argument index
with(argument0){
	paper_image = argument1;
	if(argument1 == 0){
		title_text = "Maid 1";
		destination = rm_maid1;
	}else if(argument1 == 1){
		title_text = "Maid 2";
		destination = rm_maid2;
	}else if(argument1 == 2){
		title_text = "Maid 3";
		destination = rm_maid3;
	}else if(argument1 == 3){
		title_text = "Ladle";
		destination = rm_cookLadle;
	}else if(argument1 == 4){
		title_text = "Wedding Band";
		destination = rm_cookBand;
	}else if(argument1 == 5){
		title_text = "Chef's Hat";
		destination = rm_cookHat;
	}else if(argument1 == 6){
		title_text = "Child 1";
		destination = rm_child1;
	}else if(argument1 == 7){
		title_text = "Child 2";
		destination = rm_child2;
	}else if(argument1 == 8){
		title_text = "Child 3";
		destination = rm_child3;
	}else if(argument1 == 9 || argument1 == 11){
		title_text = "???";
		instance_destroy();
	}else if(argument1 == 10){
		title_text = "Boss";
		destination = rm_boss;
	}
}