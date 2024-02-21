/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function play()
{
	show_debug_message("sample a play");
	clear();
	dialog.add(spr_npc_lucy, "Find me the moon");
	dialog.add(spr_npc_lucy, "It's hanging over there in the east");
	dialog.add(spr_npc_lucy, "And return it to the door");
	dialog.add(spr_npc_lucy, "So it would be open");
}
function stop()
{
	clear();
	show_dialogue = false
}



