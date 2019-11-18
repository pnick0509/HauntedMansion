///@argument ghost_id
///@argument frame
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
		text = "She told me….*sob* she told me not to stay here.";
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
}