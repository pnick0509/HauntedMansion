///@argument ghost_id
///@argument frame
draw_set_font(fnt_ghost);
frame_sprite = spr_cookDisappear;
text = "";
if(argument0 == 0){
	if(argument1 == 1){
		frame_sprite = spr_cookAppear;
		text = "I wasn’t meant to be here!";
	}else if(argument1 == 2){
		frame_sprite = spr_cookLaugh;
		text = "If that damned man didn’t drive everyone else off...";
	}else if(argument1 == 3){
		frame_sprite = spr_cookSpeak;
		text = "This wasn’t supposed to be the end!";
	}else if(argument1 == 4){
		frame_sprite = spr_cookLaugh;
		text = "She told me....*sob* she told me not to stay here.";
	}else if(argument1 == 5){
		frame_sprite = spr_cookLaugh;
		text = "But how was I supposed to keep food on our table otherwise?";
	}else if(argument1 == 6){
		frame_sprite = spr_cookSpeak;
		text = "Food...the damned food...not one...more...MEAL! GET OUT!";
	}
}else if(argument0 == 1){
	complete = true;
	if(argument1 == 1){
		frame_sprite = spr_cookAppear;
		text = "I TOLD YOU TO GET OU...wait...is that...is that my lucky ladle?";
	}else if(argument1 == 2){
		frame_sprite = spr_cookLaugh;
		text = "That’s right. She gave this to me...it was an anniversary gift just\nbefore I started my job here.";
	}else if(argument1 == 3){
		frame_sprite = spr_cookLaugh;
		text = "*Chuckle* I was so happy I found something that paid well.";
	}else if(argument1 == 4){
		frame_sprite = spr_cookLaugh;
		text = "Anytime the work got rough this thing would remind me of why I needed\nthe money and I’d calm down.";
	}else if(argument1 == 5){
		frame_sprite = spr_cookLaugh;
		text = "My god, what happened to me? This...this isn’t me. I need to calm down.";
	}else if(argument1 == 6){
		frame_sprite = spr_cookLaugh;
		text = "Thank you for helping me see that. Let me help you find what you’re\nlooking for here.";
	}
}else if(argument0 == 2){
	complete = true;
	if(argument1 == 1){
		frame_sprite = spr_cookAppear;
		text = "SHE TOLD ME NOT TO STAY! SHE WARNED ME!";
	}else if(argument1 == 2){
		frame_sprite = spr_cookSpeak;
		text = "But that damned Mortimer, I couldn’t...wait a minute...that’s my wedding ring.";
	}else if(argument1 == 3){
		frame_sprite = spr_cookLaugh;
		text = "My wedding...Martha...oh god, it’s been so long.";
	}else if(argument1 == 4){
		frame_sprite = spr_cookLaugh;
		text = "What happened to her? What...what happened to me?";
	}else if(argument1 == 5){
		frame_sprite = spr_cookLaugh;
		text = "If she saw me like this, causing so much violence, I can’t imagine what it would\ndo to her.";
	}else if(argument1 == 6){
		frame_sprite = spr_cookLaugh;
		text = "No, she wouldn’t want to see me like this, I have to get this under control.";
	}else if(argument1 == 7){
		frame_sprite = spr_cookLaugh;
		text = "Thank you for helping me see that.";
	}else if(argument1 == 8){
		frame_sprite = spr_cookLaugh;
		text = "Let me help you find what you’re looking for here.";
	}
}else if(argument0 == 3){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_cookAppear;
		text = "DAMN THAT MORTIMER! Mocking me, calling me a “dough boy”...";
	}else if(argument1 == 2){
		frame_sprite = spr_cookSpeak;
		text = "POKE ME ONE MORE TIME, SEE WHAT HAPPENS! ";
	}else if(argument1 == 3){
		frame_sprite = spr_cookLaugh;
		text = "You’re lucky I never left like...like...wait, that hat!";
	}else if(argument1 == 4){
		frame_sprite = spr_cookLaugh;
		text = "That was the head chef’s...well, it was mine at the end, I guess. ";
	}else if(argument1 == 5){
		frame_sprite = spr_cookLaugh;
		text = "I wasn’t qualified to be a head chef anywhere, not before finishing my\nculinary degree, but that hat...it made me feel like I could actually make it.";
	}else if(argument1 == 6){
		frame_sprite = spr_cookLaugh;
		text = "I know it was stupid, I only got it because the real chef left it behind, but it made\nme feel like I was the real thing anyways. ";
	}else if(argument1 == 7){
		frame_sprite = spr_cookLaugh;
		text = "The thing I always wanted to be, not this...this hateful thing I’ve become. ";
	}else if(argument1 == 8){
		frame_sprite = spr_cookLaugh;
		text = "Good god, how did it get so twisted? ";
	}else if(argument1 == 9){
		frame_sprite = spr_cookLaugh;
		text = "Thank you for helping me realize how far gone I’d become.";
	}else if(argument1 == 10){
		frame_sprite = spr_cookLaugh;
		text = "Please, let me help you find what you’re looking for here.";
	}
}else if(argument0 == 4){
	if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "Dust the shelves, sweep the floors, get the house clean even if it kills you...";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "Oh I remember when that was meant as a joke...*sigh*";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "Wash the clothes, clean the clock...";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "Oh, I’d like to clean your clock you damned...";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "Wait, who are you?";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "You’re walking...on my...CLEAN FLOORS!";
	}
}else if(argument0 == 5){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "STOP MAKING A MESS OF THINGS! ";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "I told you, I’m the one that will have to clean it up! ";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "Look at all the dust! Give me a duster!";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "Wait I...I can’t hold it...my hand, it goes right through. ";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "That’s right I seem to have...died, a bit.";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "But the dust...THE DUST! Oh...it’s me...I’m the dust. ";
	}else if(argument1 == 7){
		frame_sprite = spr_maid;
		text = "Well that’s...embarrassing. I...I’m making it worse.";
	}else if(argument1 == 8){
		frame_sprite = spr_maid;
		text = "I’m so sorry. Would you mind...grabbing that for me?";
	}else if(argument1 == 9){
		frame_sprite = spr_maid;
		text = "I can’t stay here in this mess any longer. ";
	}else if(argument1 == 10){
		frame_sprite = spr_maid;
		text = "If you help me leave, I’ll help you find the old man’s treasure you’re looking for.";
	}
}else if(argument0 == 6){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "For the last time, hold still and let me kill you! ";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "If you keep moving, you’re going to turn into a mess that gets everywhere, and then\nwho do you think has to clean it? ";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "ME! And the master will probably make some sexist joke about it in the meantime! ";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "Like with that broom. ";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "You’d think the man could just accept that I need basic cleaning tools to, oh, I\ndon’t know, CLEAN THE HOUSE";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "...but no, he always made some joke about how I was a witch riding around on\nmy broom and casting hexes on people. ";
	}else if(argument1 == 7){
		frame_sprite = spr_maid;
		text = "Wait, you’re here to steal the old man’s money? ";
	}else if(argument1 == 8){
		frame_sprite = spr_maid;
		text = "Oh, that would be justice. ";
	}else if(argument1 == 9){
		frame_sprite = spr_maid;
		text = "Tell you what, I’ll help you find it, just to get back at Mortimer for the years\nof enduring his demeaning humor. ";
	}else if(argument1 == 10){
		frame_sprite = spr_maid;
		text = "Oh, and bring the broom. ";
	}else if(argument1 == 11){
		frame_sprite = spr_maid;
		text = "Your shoes are covered in dirt and you’re tracking it everywhere.";
	}
}else if(argument0 == 7){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "Finally, I have you cornered! ";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "Trapped like one of the damned pantry rats! ";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "Wait, what’s that you’re stepping on? You got mud on it! ";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "This...this picture was mine! ";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "My little boy drew this for me, and I don’t think mud was one of his intended\nartistic tools! ";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "How dare you!? You ruined...wait, my children! ";
	}else if(argument1 == 7){
		frame_sprite = spr_maid;
		text = "Oh, God, how long has it been? ";
	}else if(argument1 == 8){
		frame_sprite = spr_maid;
		text = "They must have been starving! ";
	}else if(argument1 == 9){
		frame_sprite = spr_maid;
		text = "I don’t know if anyone else could take care of them, it was only me! ";
	}else if(argument1 == 10){
		frame_sprite = spr_maid;
		text = "That damned Mortimer, I’d have been there for my children if not for him! ";
	}else if(argument1 == 11){
		frame_sprite = spr_maid;
		text = "You...you’re here to take his money, right? ";
	}else if(argument1 == 12){
		frame_sprite = spr_maid;
		text = "The only thing he cares about? ";
	}else if(argument1 == 13){
		frame_sprite = spr_maid;
		text = "I’ll help you, if only to get revenge on that man.";
	}
}else if(argument0 == 8){
	if(argument1 == 1){
		frame_sprite = spr_childStand;
		text = "One, two, buckle my shoe....";
	}else if(argument1 == 2){
		frame_sprite = spr_childStand;
		text = "Three, four, SHUT THE DOOR!";
	}else if(argument1 == 3){
		frame_sprite = spr_childStand;
		text = "Oh, hello! What’s your name? Do you want to play?";
	}else if(argument1 == 4){
		frame_sprite = spr_childStand;
		text = "It gets so lonely here, and Papa is so angry all the time.";
	}else if(argument1 == 5){
		frame_sprite = spr_childStand;
		text = "I’m used to hiding though, I’m the best at hide and seek!";
	}else if(argument1 == 6){
		frame_sprite = spr_childStand;
		text = "Let’s play a game! If I tag you, you have to stay and play with me forever!";
	}
}else if(argument0 == 9){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_childStand;
		text = "HEY! Are you cheating!?";
	}else if(argument1 == 2){
		frame_sprite = spr_childStand;
		text = "You were supposed to get hit by now!";
	}else if(argument1 == 3){
		frame_sprite = spr_childStand;
		text = "Wait, what are you holding?";
	}else if(argument1 == 4){
		frame_sprite = spr_childStand;
		text = "*Gasp* You found Goldilocks! I’ve been looking everywhere for her! ";
	}else if(argument1 == 5){
		frame_sprite = spr_childStand;
		text = "Papa gave her to me when the lady he called my new Mom left, so I’d always\nhave a friend. ";
	}else if(argument1 == 6){
		frame_sprite = spr_childStand;
		text = "Goldilocks would never leave me.";
	}else if(argument1 == 7){
		frame_sprite = spr_childStand;
		text = "I can’t believe I lost her!";
	}else if(argument1 == 8){
		frame_sprite = spr_childStand;
		text = "I’ve been so mad I couldn’t remember where I put her down and I guess other\nstuff got in the way.";
	}else if(argument1 == 9){
		frame_sprite = spr_childStand;
		text = "Thank you for finding her! ";
	}else if(argument1 == 10){
		frame_sprite = spr_childStand;
		text = "I can help you find what you’re looking for, but we have to look out for Papa. ";
	}else if(argument1 == 11){
		frame_sprite = spr_childStand;
		text = "He’ll be real mad if he finds you.";
	}
}else if(argument0 == 10){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_childStand;
		text = "Get away from that, it’s mine! ";
	}else if(argument1 == 2){
		frame_sprite = spr_childStand;
		text = "Oh, no! I almost hit it when we were playing. ";
	}else if(argument1 == 3){
		frame_sprite = spr_childStand;
		text = "I would have broken it...I guess I have been a little too wild.";
	}else if(argument1 == 4){
		frame_sprite = spr_childStand;
		text = "I don’t know what I’d do if I lost it. ";
	}else if(argument1 == 5){
		frame_sprite = spr_childStand;
		text = "See the pretty woman? That’s Mom!";
	}else if(argument1 == 6){
		frame_sprite = spr_childStand;
		text = "Well, it used to be, before Papa took me to live with him. ";
	}else if(argument1 == 7){
		frame_sprite = spr_childStand;
		text = "This is all I have from her now, but I look at it every day!";
	}else if(argument1 == 8){
		frame_sprite = spr_childStand;
		text = "I wonder if she ever thinks about me.";
	}else if(argument1 == 9){
		frame_sprite = spr_childStand;
		text = "Hey, mister...if I help you find what you’re looking for here, do you think you\ncould look for my Mom? ";
	}else if(argument1 == 10){
		frame_sprite = spr_childStand;
		text = "We have to watch out for Papa though, he’s really mad all the time.";
	}
}else if(argument0 == 11){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_childStand;
		text = "You can’t get away from me! ";
	}else if(argument1 == 2){
		frame_sprite = spr_childStand;
		text = "I’ll catch you even if you try to get away on that super-awesome jet trike...hey wait! ";
	}else if(argument1 == 3){
		frame_sprite = spr_childStand;
		text = "THAT’S MY SUPER-AWESOME JET TRIKE! ";
	}else if(argument1 == 4){
		frame_sprite = spr_childStand;
		text = "I loved this thing! I used to ride around everywhere on it: outside, inside, up and\ndown the hallways, other countries, the moon, EVERYWHERE! ";
	}else if(argument1 == 5){
		frame_sprite = spr_childStand;
		text = "Well, in my head at least. ";
	}else if(argument1 == 6){
		frame_sprite = spr_childStand;
		text = "I used to think I could go anywhere and do anything on that thing, but now...I’ve\nbeen stuck here for so long. ";
	}else if(argument1 == 7){
		frame_sprite = spr_childStand;
		text = "I just want to be able to go where I want again. ";
	}else if(argument1 == 8){
		frame_sprite = spr_childStand;
		text = "If I help you find Papa’s money, you can help me leave here, right? ";
	}else if(argument1 == 9){
		frame_sprite = spr_childStand;
		text = "We have to watch out for him though, he’s really grumpy.";
	}
}

//show_message(string_width(text));

/*
else if(argument0 == 7){
	complete = true;	
	if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 7){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 8){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 9){
		frame_sprite = spr_maid;
		text = "";
	}else if(argument1 == 10){
		frame_sprite = spr_maid;
		text = "";
	}
}


/*
if(argument1 == 1){
		frame_sprite = spr_maid;
		text = "I’ve spent so long here, just stuck in a loop of my daily duties.";
	}else if(argument1 == 2){
		frame_sprite = spr_maid;
		text = "I’ve no idea what year it even is right now.";
	}else if(argument1 == 3){
		frame_sprite = spr_maid;
		text = "My poor children, they’ve been alone without me for so long!";
	}else if(argument1 == 4){
		frame_sprite = spr_maid;
		text = "I...I wonder if they’re even still ok.";
	}else if(argument1 == 5){
		frame_sprite = spr_maid;
		text = "I can’t believe I wound up HERE, of all places.";
	}else if(argument1 == 6){
		frame_sprite = spr_maid;
		text = "Stuck even in death with that boorish womanizer.";
	}else if(argument1 == 7){
		frame_sprite = spr_maid;
		text = "*Sigh* I know there was really no other choice for me,\nbut looking back it just seems like I should have...";
	}else if(argument1 == 8){
		frame_sprite = spr_maid;
		text = "I don’t know, should have been able to do...\nSOMETHING to get out of this place.";
	}else if(argument1 == 9){
		frame_sprite = spr_maid;
		text = "All of this is that man’s fault, and I’ll see\nthe only thing he cares about ruined before I can move on.";
	}else if(argument1 == 10){
		frame_sprite = spr_maid;
		text = "I’ll have my revenge.";
	}