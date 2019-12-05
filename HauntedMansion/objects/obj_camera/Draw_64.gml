//Draw transition surface
if(global.transition_id != -1 && surface_exists(global.transition_surface)){
	draw_surface(global.transition_surface,0,0);
}

//Show fps
if(keyboard_check(vk_control)){
	draw_set_color(c_fuchsia);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_description);
	draw_text(2,32,fps);
}
//Draw hint text in foyer
if(room == rm_foyer){
	scr_drawFoyer();
}else if(room == rm_conclusion){
	//Draw final results
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ghost);
	draw_set_color(c_lime);
	#macro SCORE string(global.success)+"/"+string(global.ghost)+"\n"
	if(global.success < 0 && global.presuccess == 0){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2-global.concludeY,string("And so it was that Mortimer claimed another soul, doomed to wander the halls of the\nmansion as a spirit searching for a treasure he could never use even if he found it.\nReston Isaac Pearce died poor and forgotten, joining a host of other poor souls that\nmet their end at the hands of the mansion’s master.\n\nEvery day turned to unbearable and ironic agony as he had become the very thing he\nspecialized in removing, but couldn’t seem to move on. It would be decades before\nanother living person would set foot in the building. May they have better luck than\nReston, and put the tormented who wander the demesne to rest.\n\nR.I.P."));	
	}else if((global.presuccess > 0 && global.success < 0) || (global.success >= 0 && global.presuccess == 0)){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2-global.concludeY,string("Reston Pearce managed, somehow, to find his way out of the cursed mansion with his\nlife and limbs intact. He never did manage to find Mortimer’s treasure, however, and\nthe ghosts he couldn’t reach still wander the mansion’s halls to this day.\n\nReston went back to his old life, trying to earn a meager living in the city. There just\nwasn’t much call for a washed-out exorcist, though, and he found just barely enough\nwork to keep himself alive for awhile longer. He never could seem to get his life\ntogether or hold a relationship, and the little money he did make he found himself\npouring into vices to create an escape, if only for a little while. After a long 60 or so\nyears of life, he died alone and forgotten, hunched in an alley where he’d been\nchasing his ghosts in more ways than one.\n\nR.I.P."));
	}else if(global.success >= 0 && global.presuccess > 0){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2-global.concludeY,string("With Mortimer’s spectre finally cast out from the house, an eerie and ephemeral calm\nfell over the mansion. The ghosts Reston Pearce wasn’t able to reach still haunted him\nfor years, at least metaphorically, but the spirits he had helped were able to lead him\nto Mortimer’s money in the end.\n\nReston took the money for himself, sending the ghosts on as best as he could to the\nafterlife. Afterwards, he tried to forget them all and the events of his life before\ncoming into wealth. Everything about that time was a painful reminder of how it felt\nto barely scrape by, and that was something he just didn’t want to remember.\n\n With the fortune he’d found, Reston didn’t have to work another day in his life. He\nspent his days in luxury, enjoying numerous vices and enjoying several different\nfleeting relationships but never really settled down. He spent time pursuing hobbies\nhe enjoyed and moved from activity to activity, but couldn’t help feeling like\nsomething was still missing from his life. By his early 80’s, the money finally ran\nout. The timing seemed to line up nicely as far as Reston was concerned, because\nthe lung cancer he got from over-indulging his smoking habit finally claimed him\nthe next year."));
	}else if(global.success >= 3){
		draw_text(VIEW_WIDTH/2,VIEW_HEIGHT/2-global.concludeY,string("With Mortimer finally calmed down enough to come to his senses, he eventually\naccepted responsibility for the tragedies that happened in his home. He managed to\nlet go of his hate and bitterness, and was put at peace. The mansion’s master himself\nfinally let go of his ties to this world, showing Reston Pearce the way to his treasure\nof his own volition, as thanks for finally freeing his soul.\n\n When the spirits that lived in the house moved on, Reston found himself moved by\ntheir stories. He wanted to do what he could to make things right for them. The first\nthing Reston did with his new found fortune was track down the living relatives of\nthose from the mansion.\n\nHe found records leading to the wife of Ramsey, the cook. She had passed away,\nbut as it turns out had given birth shortly after Ramsey’s death to a daughter. Reston\nmade sure to use the money to ensure Ramsey’s child had a comfortable life, and\nthat she could have all the things Ramsey had hoped to be able to give his family.\n\nLater, he located the children of Mia, the maid. Both Nina and Milo were well into\ntheir senior years with families of their own, but they were happy to hear the news\nof their mother’s fate. Reston gave them each a large share of the money Mortimer\nleft behind, making sure they had plenty to use as they saw fit for their own families.\n\nLittle Elizabeth didn’t actually move on with the rest of the ghosts. She was\nimmensely thankful that Reston found a way to reach her Papa and help him\nredeem himself, but she desperately wanted to find out more about her mother.\nWhen they couldn’t find a trace of her after a year of searching, Reston tried to\nconvince Elizabeth to leave this world behind. Still not ready to move on,\nhowever, and experiencing a newfound enjoyment of exploring the modern world,\nElizabeth decided to stay with Reston, who grew to think of her as family.\n\nThe last of the money was used to breathe new life into Reston’s exorcism\nbusiness, now that he was more confident in his own abilities. With the increased\nexposure bought by Mortimer’s fortune, the business began to thrive and jobs\nstarted pouring in from all over the world. This worked nicely to double as a way\nto continue looking for clues for Elizabeth’s mother, as she and Reston worked\ntogether to investigate hauntings and put spirits to rest wherever they went."));
	}
}

//Draw health
if(room == rm_boss){
	for(var i = 0; i <= global.success; i++){
		draw_sprite(spr_heart,i,2+(34*i),2);
	}

	//Draw Clock
	draw_set_color(c_fuchsia);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if(bossSeconds >= 10){
		draw_text(2,64,string(bossMinutes)+":"+string(bossSeconds));
	}else{
		draw_text(2,64,string(bossMinutes)+":0"+string(bossSeconds));
	}
}