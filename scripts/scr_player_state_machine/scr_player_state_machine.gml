/// @function			elizabeth_move_state()
function elizabeth_move_state() {
	/// @ Description	Handling movement for elizabeth object
	var _hspd = (o_input.right_ - o_input.left_)*spd_;
	var _vspd = (o_input.down_ - o_input.up_)*spd_;

	// Move
	move(_hspd, _vspd);
}

/// @function			elizabeth_wait_state()
function elizabeth_wait_state() {
	/// @ Description	...?
	image_index = 0;
	image_speed = 0;
}