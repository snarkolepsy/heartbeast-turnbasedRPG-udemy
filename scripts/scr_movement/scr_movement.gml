/// @function					move(hspd, vspd);
/// @param		{real}	_hspd	The horizontal movement speed
/// @param		{real}	_vspd	The vertical movement speed
function move(hspd, vspd){
	/// @ Description	Checks along the vertical and horizontal path of travel
	///					and allows movement along the x and y axis if there isn't
	///					a solid object in the way.
	///					Returns true if we've changed position
	
	if (!place_meeting(x+hspd, y, o_solid)) {
		x += hspd;
	}
	
	if (!place_meeting(x, y+vspd, o_solid)) {
		y += vspd;
	}
	
	return x!=xprevious	|| y!=yprevious;
}