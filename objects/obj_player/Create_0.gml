function set_animation(state)
{
	new_animation = variable_struct_get(animations, state);
	animation_frame = new_animation.frame;
}
move_speed = 3;
animation_frame = 0;

colliding_with_lucy = false;
collide_with_lucy_enter = false;

colliding_with_louis = false;
collide_with_louis_enter = false;

find_moon = false;

image_index = 0;
image_speed = false;

collider_radius = 25;
game_state = game_states.start;

animations = {
	back: {frame: 0},
	forward: {frame: 1},
	right: {frame: 2},
	left: {frame: 3},
}

enum game_states 
{
	start,
	after_talk1,
}

function change_game_state(new_state)
{
	game_state = new_state;
}

