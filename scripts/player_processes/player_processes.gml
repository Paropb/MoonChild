
function reset_variables()
{
	left = 0
	right = 0
	up = 0
	down = 0
}
function get_input()
{
	if (keyboard_check(ord("A"))/*||keyboard_check(vk_left)*/) left = 1
	if (keyboard_check(ord("D"))/*||keyboard_check(vk_right)*/) right = 1
	if (keyboard_check(ord("W"))/*||keyboard_check(vk_up)*/) up = 1
	if (keyboard_check(ord("S"))/*||keyboard_check(vk_down)*/) down = 1
	return {_left: left, _right: right, _up: up, _down: down};
}
function calc_movement()
{
	var _hmove = right - left
	var _vmove = down - up
	
	if _hmove != 0 or _vmove != 0{
		var _dir = point_direction(0, 0, _hmove, _vmove)
		_hmove = lengthdir_x(move_speed, _dir)
		_vmove = lengthdir_y(move_speed, _dir)
		
		x += _hmove
		y += _vmove
	}
}
function collision()
{
	var _tx = x
	var _ty = y
	
	x = xprevious
	y = yprevious
	
	var _disx = abs(_tx - x)
	var _disy = abs(_ty - y)
	
	repeat(_disx)
	{
		if(!place_meeting(x + sign(_tx - x), y, [obj_solid, obj_door])) x += sign(_tx - x)
	}
	repeat(_disy)
	{
		if(!place_meeting(x, y + sign(_ty - y), [obj_solid, obj_door])) y += sign(_ty - y)
	}
}