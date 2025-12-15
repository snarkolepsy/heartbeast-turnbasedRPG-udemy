/// @function			camera_follow_player_state()
function camera_follow_player_state() {
	/// @ Description	????
	if (not instance_exists(target_)) {
		exit;
	}
	
	x = lerp(x, target_.x, 0.1);
	y = lerp(y, target_.y, 0.1);
	
	x = round_n(x, 1/scale_);
	y = round_n(y, 1/scale_);
	
	x = clamp(x, width_/2, room_width-width_/2); // Horizontally
	y = clamp(y, height_/2, room_height-height_/2); // Vertically 
	
	camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);
}

/// @function						round_n(_value, _increment)
/// @param		{real}	_value		The original value to be rounded
/// @param		{real}	_increment	The increment? How the fuck does this work, now?
function round_n(_value, _increment){
	/// @ Description				???
	return round(_value/_increment) * _increment;
}
