
//Follow Target

if(instance_exists(target))
{
	cameraX = target.x - cameraWidth / 2;
	cameraY = target.y - cameraHeight / 2;
	
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}
camera_set_view_pos(view_camera[0], cameraX, cameraY);

layer_x("Parallax_0", cameraX * 0.9);
layer_y("Parallax_0", cameraY * 0.9);

layer_x("Parallax_1", cameraX * 0.8);
layer_y("Parallax_1", cameraY * 0.8);

layer_x("Parallax_2", cameraX * 0.9);
layer_y("Parallax_2", cameraY * 0.9);
