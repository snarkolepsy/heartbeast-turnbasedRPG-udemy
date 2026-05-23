/**********								PLAYER STATES									**********/

/// @function							elizabeth_move_state()
/// @description						Handling cartesian movement for Elizabeth object
function elizabeth_move_state() {
	var _hspd = (o_input.right_ - o_input.left_)*o_elizabeth.spd_;
	var _vspd = (o_input.down_ - o_input.up_)*o_elizabeth.spd_;

	// Move
	move(_hspd, _vspd);
	
	// Check for random encounter
	if (!instance_exists(o_last_encounter)) {
		instance_create_layer(o_elizabeth.x, o_elizabeth.y, "UI", o_last_encounter);
		o_last_encounter.distance_ = random_range(32, room_width/2);
	}
	else {
		if (point_distance(o_elizabeth.x, o_elizabeth.y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance_) {
			o_last_encounter.distance_ = random_range(32, room_width/2);
			o_last_encounter.x = o_elizabeth.x;
			o_last_encounter.y = o_elizabeth.y;
			encounter();
		}
	}
}

/// @function							elizabeth_wait_state()
/// @description						Prevents the Elizabeth object from moving or animating
function elizabeth_wait_state() {
	o_elizabeth.image_index = 0;
	o_elizabeth.image_speed = 0;
}