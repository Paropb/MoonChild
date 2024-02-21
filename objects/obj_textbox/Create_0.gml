depth = -9999;

//Textbox parameters
textbox_width = 320;
textbox_height = 150;
border = 16;
line_sep = 20;
line_width = textbox_width - 2*border;

txtb_alpha = 1;
normal_alpha = 1;

txtb_spr = spr_dialogue_box_1;
txtb_img = 0;
txtb_img_spd = 6/60;

//the text
page = 0;
page_number = 0;
text[0] = "";
text_list = ds_list_create();
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 0.5;

//options
option[0] = "";
option_according_page_number[0] = 0;
option_link_id = [""];
option_pos = 0;
option_number = 0;

page_number_related_option_number[0] = 0;
page_number_related_options[0] = [""];
page_number_related_option_link_id[0] = [""];

last_page_number = 0;

is_option_branch = false;
is_option_branch_alpha = 0;

is_making_choice = false;

//only after a create_script can create new options
//can_set_new_option = false;
setup = false;

