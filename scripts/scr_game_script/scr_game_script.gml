/// @param text_id
function scr_game_script(_text_id){
	switch(_text_id)
	{
		case "npc_lucy":
			scr_text("???:  Greetings! MoonChild");
			scr_text("MoonChild:  .................");
			scr_text("MoonChild:  !!!!!!  +  ?????");
			scr_text("MoonChild:  ( The last thing I remember was in the balcony helding a glass of Scotch in which two ice cubes were melting )")
			scr_text("MoonChild:  ( I must have been drinking too much! )");
			scr_options("MoonChild:  I'm sorry, who are you?", "Moonchild - bewildered");
			break;
			case "Moonchild - bewildered":
				scr_text("???:  Me? I'm your childhood excrusion");
				scr_text("Mr. Childhood Excrusion:  Remember those summer nights when it was so capacious that a stretch of arm could you touch the face of Ms.Moon");
				scr_text("Mr. Childhood Excrusion:  As your finger gently brushed her face, she escaped and so as the entirety of the very part of you");
				scr_text("Mr. Childhood Excrusion:  Tonight somehow I was resurrected, and I felt more powerful than ever");
				scr_text("Mr. Childhood Excrusion:  I'll grant you my power, then Walk into the stars, where she lies in the west, take her back to me");
				scr_text("MoonChild:  (Seems like a dream)")
				scr_options("MoonChild:  Alright!", "Moonchild - Alright");
				scr_options("MoonChild:  Prove me!", "Moonchild - How do you prove");
				break;
				case "Moonchild - Alright":
					global.finished_dialogue_1 = true;
					break;
				case "Moonchild - How do you prove":
					scr_text("Mr. Childhood Excrusion:  ..............................");
					scr_text("MoonChild:  (-_^)  (^_-) (-_^)  (^_-)");
					scr_text("Mr. Childhood Excrusion:  ..........3");
					scr_text("Mr. Childhood Excrusion:  ..........2");
					scr_text("Mr. Childhood Excrusion:  ..........1");
					scr_options("MoonChild:  What happened?", "Moonchid - What happened");
					break;
					case "Moonchid - What happened":
						obj_camera.resize(3);
						global.finished_dialogue_1 = true;
						break;
		case "hurry up":
			scr_text("Mr. Childhood Excrusion:  Hurry up, the moon is in the west");
			break;
		case "found moon":
			scr_text("Mr. Childhood Excrusion:  ^_^, you fool!");
			scr_text("Mr. Childhood Excrusion:  Childhood Excrusion, what a nostalgic name!");
			scr_options("MoonChild:  doesn't matter, I shall wake up shortly~~~", "Moonchild - doesn't matter");
			scr_options("MoonChild:  Who are you!", "Moonchild - who are you?")
			break;
			case "Moonchild - doesn't matter":
				scr_text("Mr. Childhood Excrusion:  hey! we're talking about the moon, its disappear shall be everyone's concern!")
				break;
			case "Moonchild - who are you?":
				scr_text("???:  ^_^, not important, now the moon is gone, forever");
				scr_text("???:  Look at what have you done ^_^, go east, embrace the sun, he should forgive you");
				scr_text("???:  ( with burning flames ^_^ )");
				break;
	}
}