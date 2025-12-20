/// @function							calculate_health(_level, _health)
/// @param		{real}		_level		Player's current level
/// @param		{real}		_health		...?
function calculate_health(_level, _health) {
	/// @ Description					...?
	///									...!
	return round(_health*3 + _level*3);
}

/// @function							get_stats_from_class(_class)
/// @param		{string}	_class		The name of the player or enemy class
function get_stats_from_class(_class) {
	/// @ Description					...?
	///									...!
	
	// Make a copy of the stats struct
	var _stats = variable_clone(o_data.classes_[$ _class]);
	
	// Set the maximum health and current health
	_stats[$ "maxhealth"] = calculate_health(level_, _stats[$ "health"]);
	_stats[$ "health"] = _stats[$ "maxhealth"];
	
	// Set current experience levels for player stats object
	if (object_index == o_player_stats) {
		_stats[$ "maxexperience"] = level_*10;
	}
	
	return _stats;
}