/// @description Whenever a room starts
if (room == r_battle) {
	o_camera.state_ = battle_camera_intro_state;
	o_camera.target_ = noone;
}
else {
	// Adjust the GUI layer size so we draw the vignette correctly
	display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

	// Move the camera onto target's position
	if (instance_exists(target_)) {
		x = target_.x;
		y = target_.y;
	}
}