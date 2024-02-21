
depth = -y;

var shadow_width = 30;
var shadow_height = 30;
draw_set_color(c_red);
draw_set_alpha(0.3);
//draw_ellipse(
//	x - shadow_width, y + shadow_height,
//	x + shadow_width, y + 2 * shadow_height, 
//	false
//	);

image_index = animation_frame;


draw_self();
draw_set_alpha(0);

draw_circle(x, y, collider_radius, false);



