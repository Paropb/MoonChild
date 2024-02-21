/// @param
function scr_text(_text){
	option = [];
	option_number = 0;
	option_link_id = [""];
	
	page_number_related_options[page_number] = [""];
	page_number_related_option_number[page_number] = 0;
	page_number_related_option_link_id[page_number] = [""];
	
	text[page_number] = _text;
	
	last_page_number = page_number;
	page_number++;
	//can_set_new_option = true;
}
///@param option
///@param link_id
function scr_options(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	
	page_number_related_options[last_page_number] = option;
	page_number_related_option_number[last_page_number] = option_number;
	page_number_related_option_link_id[last_page_number] = option_link_id;
	
	show_debug_message(last_page_number);
	show_debug_message("page_number_related_option_link_id[last_page_number]:");
	show_debug_message(page_number_related_option_link_id[last_page_number]);
	
	
	//can_set_new_option = false;
}

function create_textbox(_text_id, _depth = -9999)
{
	with ( instance_create_depth(0,0,-_depth,obj_textbox))
	{
		scr_game_script(_text_id);
	}
}
function destroy_textbox()
{
	instance_destroy(obj_textbox);
}
