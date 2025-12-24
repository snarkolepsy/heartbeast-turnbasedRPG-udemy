/**********								CAMERA STATES									**********/

/// @function							camera_follow_player_state()
function camera_follow_player_state() {
	/// @ Description					Following the player taeget object, which is usually the player
	if (not instance_exists(o_camera.target_)) {
		exit;
	}
	// Gradually move the camera position towards the target
	o_camera.x = lerp(o_camera.x, o_camera.target_.x, o_camera.speed_);
	o_camera.y = lerp(o_camera.y, o_camera.target_.y, o_camera.speed_);
	
	// Do  we still need this part?
	//o_camera.x = round_n(o_camera.x, 1/o_camera.x_scale_);
	//o_camera.y = round_n(o_camera.y, 1/o_camera.y_scale_);
	
	// Clamping the camera POV to only be within the bounds of the ROOM
	o_camera.x = clamp(o_camera.x, o_camera.width_/2, room_width-o_camera.width_/2); // Horizontally
	o_camera.y = clamp(o_camera.y, o_camera.height_/2, room_height-o_camera.height_/2); // Vertically 
	
	camera_set_view_pos(view_camera[0], o_camera.x-o_camera.width_/2, o_camera.y-o_camera.height_/2);
}

/// @function							battle_camera_intro_state()
function battle_camera_intro_state() {
	/// @ Description					Start on the battle background and move to the center
	
	// Gradually moving the camera closer to the center-ish of the battle screen
	o_camera.x = lerp(o_camera.x, room_width/2, o_camera.speed_);
	o_camera.y = lerp(o_camera.y, room_height/2, o_camera.speed_);
	camera_set_view_pos(view_camera[0], o_camera.x-o_camera.width_/2, o_camera.y-o_camera.height_/2);
	
	// When we are close enough, complete the movement and change camera state
	if(point_distance(o_camera.x,  o_camera.y, room_width/2, room_height/2) < 1) {
		o_camera.x = room_width/2;
		o_camera.y = room_height/2;
		o_camera.state_ = battle_camera_idle_state;
	}
}

/// @function							battle_camera_idle_state()
function battle_camera_idle_state() {
	/// @ Description					...?
	/*o_camera.target_.x = room_width*3/4;
	o_camera.target_.y = room_height/2;
	
	camera_approach(o_camera.target_.x, o_camera.target_.y, 320, 180, o_camera.speed_/2, o_camera.speed_);*/
}

/// @function							battle_camera_focus_state()
function battle_camera_focus_state() {
	/// @ Description					Focus in on a battle unit
	/*camera_approach(o_camera.target_.x, room_height/2, 288, 162, o_camera.speed_/2, o_camera.speed_/2);*/
}

/**********								HELPER FUNCTIONS								**********/

/// @function							round_n(_value, _increment)
/// @param		{real}		_value		The original value to be rounded
/// @param		{real}		_increment	The increment? How the fuck does this work, now?
function round_n(_value, _increment){
	/// @ Description				???
	return round(_value/_increment) * _increment;
}

/// @function							camera_approach(_x, _y, _width, _height, _speed, _zoom)
/// @param		{real}		_x			Target x position
/// @param		{real}		_y			Target y position that we'd like to move to
/// @param		{real}		_width		Target width
/// @param		{real}		_height		Tagett height for our view
/// @param		{real}		_speed		How fast we should move to the new position
/// @param		{real}		_zoom		How fast we should zoom to the new view
function camera_approach(_x, _y, _width, _height, _speed, _zoom) {
	/// @ Description					Used to move the camera and zoom in and out during battles
	
	// Move towards the target
	o_camera.x = lerp(o_camera.x, _x, _speed);
	o_camera.y = lerp(o_camera.y, _y, _speed);
	
	// Re-scale the view - OUTDATED USAGE OF VIEW_W/HVIEW[N]
	view_wview[0] = lerp(view_wview[0], _width, _zoom);		// Changing the width
	view_hview[0] = lerp(view_hview[0], _height, _zoom);	// Change the height
	
	//Suggested from internet --> camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));
	// Used in following player --> camera_set_view_pos(view_camera[0], o_camera.x-o_camera.width_/2, o_camera.y-o_camera.height_/2);
	// display_get_gui_width(view_camera[0])
	// display_get_gui_height(view_camera[0])
}

/// @function							camera_screenshake(_amount, _duration)
/// @param		{real}		_amount		How shaky is it?
/// @param		{real}		_duration	And for how long
function camera_screenshake(_amount, _duration) {
	/// @ Description					Apply shakiness to the camera object
	if (instance_exists(o_camera)) {
		o_camera.screenshake_ = _amount;
		o_camera.alarm[0] = _duration;
	}
}