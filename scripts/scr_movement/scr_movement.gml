/// @function				move(_hspd, _vspd)
/// @description			Checks along the vertical and horizontal path of travel
///							and allows movement along the x and y axis if there isn't
///							a o_solid object in the way.
/// @param {Real}	_hspd	The horizontal movement speed in pixels
/// @param {Real}	_vspd	The vertical movement speed in pixels
/// @return {Bool}			True if able to move, False if position remains the same
function move(_hspd, _vspd) {
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
		image_speed = 0.4;
		facing_ = get_facing(_dir);
	}
	
	return _moved;
}

/// @function								get_facing(_direction)
/// @description							Gets a left, right, up, or down orientation.
/// @param			{Real}	_direction		Angle in degrees
/// @return		{Real}					Range: 0, 1, 2, or 3
function get_facing(_direction) {
	var _facing = round(_direction/90);
	if (_facing == 4)
		_facing = dir.right;
	return _facing;
}