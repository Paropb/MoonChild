accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 328;

var _option_number = page_number_related_option_number[page];
var _drawtext = string_copy(text[page], 1, draw_char);

var _instruction_height = 300;

if(setup == false)
{
	txtb_alpha = normal_alpha;
	
	show_debug_message("textbox_setup");
	
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loops through the pages
	
	for(var p = 0; p < page_number; p++)
	{
		text_length[p] = string_length(text[p]);
		
		text_x_offset[p] = 240;
	}
}

if(page_number <= 0)
{
	return;
}

draw_set_color(c_silver);
draw_set_alpha(1);
//typing the text
if(draw_char < text_length[page])
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip through pages
if(accept_key)
{
	//if the typing is done
	if(draw_char == text_length[page])
	{
		if(page < page_number - 1)
		{
			if(is_making_choice == false)
			{
				page++;
				draw_char = 0;
			}
			
		}
		else
		{
			if(is_making_choice == false)
			{
				instance_destroy();
			}
		}
	}
	else
	{
		draw_char = text_length[page];
	}
}

//draw the textbox
var text_x = textbox_x + text_x_offset[page];
var text_y = textbox_y;

txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
draw_sprite_ext(txtb_spr, txtb_img, text_x, text_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, txtb_alpha);

//options
if(draw_char == text_length[page]/* && page == page_number - 1*/)
{	
	is_making_choice = false;
	if(page_number_related_option_number[page] > 0)
	{
		is_making_choice = true;
		
		var _option = page_number_related_options[page];
		//option selection
		option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, _option_number - 1);
	
		var _op_space = 38;
		var _op_bord = 10;
		for (var op = 0; op < _option_number; op ++)
		{
			var _o_w = string_width(_option[op]) + _op_bord * 2;
			draw_sprite_ext(txtb_spr, txtb_img, text_x + 16, text_y - _op_space * _option_number + _op_space * op, _o_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h, 0, c_white, txtb_alpha);
		
			//the arrow
			if option_pos == op
			{
				var option_pos_y_fix = (_op_space - 1) / 2 - sprite_get_height(spr_selection_arrow)/2;
				draw_sprite(spr_selection_arrow, 0, text_x, text_y - _op_space * _option_number + _op_space * op + option_pos_y_fix);
			}
		
		//draw the option text
		draw_text(text_x + 16 + _op_bord, text_y - _op_space * _option_number + _op_space * op + 2, _option[op]);
		
		//draw instructions
		draw_text_ext(text_x + border, text_y + border - _instruction_height, "Press Enter To Make Your Choice", line_sep, line_width);
		}
	}	
}

if(_option_number > 0)
{
	if(keyboard_check_pressed(vk_enter))
	{
		create_textbox(page_number_related_option_link_id[page][option_pos]);
		is_option_branch = true;
		instance_destroy();
	}
}

//draw the text
draw_text_ext(text_x + border, text_y + border, _drawtext, line_sep, line_width);
