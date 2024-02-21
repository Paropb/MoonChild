reset_variables()

var input = get_input();

if(input._down == 1) set_animation("back")
if(input._left == 1) set_animation("left")
if(input._right == 1) set_animation("right")
if(input._up == 1) set_animation("forward")

calc_movement()

collision()

var inst_lucy = collision_circle(x, y, collider_radius, obj_npc_lucy, false, true);
var inst_louis = collision_circle(x, y, collider_radius, obj_npc_louis, false, true);
var inst_moon = collision_circle(x, y, collider_radius, obj_moon, false, true);
var inst_door = collision_circle(x, y, collider_radius, obj_door, false, true);
var inst_sun = collision_circle(x, y, collider_radius, obj_sun, false, true);

if(inst_lucy != noone)
{
	//collision enter
	if(colliding_with_lucy == false)
	{
		obj_npc_lucy.start_dialogue();
	}
	colliding_with_lucy = true;
}
else
{
	if(colliding_with_lucy == true)
	{
		obj_npc_lucy.stop_dialogue();
	}
	colliding_with_lucy = false;
}
if(inst_louis != noone)
{
	//collision enter
	if(colliding_with_louis == false)
	{
		obj_npc_louis.start_dialogue();
	}
	colliding_with_louis = true;
}
else
{
	if(colliding_with_louis == true)
	{
		obj_npc_louis.stop_dialogue();
	}
	colliding_with_louis = false;

}

if(inst_moon != noone)
{
	with(inst_moon) instance_destroy();
	global.found_moon = true;
	find_moon = true;
}

if(inst_door != noone)
{
	if(find_moon)
		with(inst_door) instance_destroy();
}

if(inst_sun != noone)
{
	room_goto_next();
}



