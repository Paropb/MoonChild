if(show_dialogue == true)
{
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialogue.message);
	
	if(sprite_get_height(current_dialogue.sprite) > height)
	{
		height = sprite_get_height(current_dialogue.sprite);
	}
	
	height += padding * 2;
	
	final_height = height + gui_y_up;
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(gui_margin_x, display_get_gui_height() - final_height, display_get_gui_width() - gui_margin_x, display_get_gui_height() - gui_y_up, false);
	
	draw_set_color(c_white);
	draw_rectangle(border + gui_margin_x, display_get_gui_height() - final_height + border, display_get_gui_width() - border - gui_margin_x, display_get_gui_height() - border - gui_y_up, false);
	
	draw_set_color(c_black);
	draw_rectangle(border * 2 + gui_margin_x, display_get_gui_height() - final_height + border * 2, display_get_gui_width() - border *2 - gui_margin_x, display_get_gui_height() - border*2 - gui_y_up, false);
	
	var centerX = sprite_get_xoffset(current_dialogue.sprite);
	var centerY = sprite_get_yoffset(current_dialogue.sprite);
	
	if(current_dialogue.sprite != -1)
	{
		draw_sprite(current_dialogue.sprite, 0, centerX + border * 3 + gui_margin_x, border * 3 + display_get_gui_height() - final_height + centerY);
	}
	
	text_x = sprite_get_width(current_dialogue.sprite) + centerX + (padding * 2) + gui_margin_x;
	text_y =  border * 3 + display_get_gui_height() - final_height //- sprite_get_height(current_dialogue.sprite);
	
	draw_set_color(c_white);
	
	draw_text_transformed(text_x, text_y, current_dialogue.message, 2, 2, 0);
	
	alpha = lerp(alpha, 1, 0.06);

	
}
draw_set_alpha(1);

	


