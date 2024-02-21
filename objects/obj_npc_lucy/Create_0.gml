/// @description Insert description here
// You can write your code in this editor
text_id = "npc_lucy";

function start_dialogue()
{
	if(global.found_moon)
	{
		create_textbox("found moon");
	}
	if(global.finished_dialogue_1)
	{
		create_textbox("hurry up");
	}
	else
	{
		create_textbox("npc_lucy");
	}
}
function stop_dialogue()
{
	destroy_textbox();
}
