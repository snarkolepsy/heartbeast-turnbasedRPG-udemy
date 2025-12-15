/// @function					move(_hspd, _vspd)
/// @param		{real}	_hspd	The horizontal movement speed
/// @param		{real}	_vspd	The vertical movement speed
function move(_hspd, _vspd) {
	/// @ Description			Checks along the vertical and horizontal path of travel
	///							and allows movement along the x and y axis if there isn't
	///							a solid object in the way.
	///							Returns true if we've changed position
	
	// Horizontal movement
	if (!place_meeting(x+_hspd, y, o_solid)) {
		x += _hspd;
	}
	
	// Vertical movement
	if (!place_meeting(x, y+_vspd, o_solid)) {
		y += _vspd;
	}
	
	var _dir = point_direction(0, 0, _hspd, _vspd);
	var _moved = x!=xprevious || y!=yprevious;
	
	// Update the sprite based on direction moved
	if (!_moved) {
		image_speed = 0;
		image_index = 0;
	}
	else {
		image_speed = 0.2;
		facing_ = get_facing(_dir);
	}
	
	return _moved;
}

/// @function						get_facing(_direction)
/// @param		{real}	_direction	???
function get_facing(_direction) {
	/// @ Description				XXX
	var _facing = round(_direction/90);
	if (_facing == 4) _facing = dir.right;
	return _facing;
}