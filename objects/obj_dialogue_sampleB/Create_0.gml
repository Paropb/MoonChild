/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function play()
{
	clear();
	dialog.add(spr_npc_louis, "You've saved me...");
	dialog.add(spr_npc_louis, "At the expense of the moon..");
	dialog.add(spr_npc_louis, "You are here for the way to exit, do you?");
	dialog.add(spr_npc_louis, "Go west, where the sun sets, embrace it so that you shall leave");
}
function stop()
{
	clear();
	show_dialogue = false
}



