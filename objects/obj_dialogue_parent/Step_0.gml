if(show_dialogue == false)
{
	if(dialog.count <= 0)
	{
		instance_destroy();
		return;
	}
	
	current_dialogue = dialog.pop();
	if(current_dialogue)
		show_dialogue = true;
}
else
{
	if(keyboard_check_released(key_next))
	{
		show_dialogue = false;
		alpha = 0;
	}
}


