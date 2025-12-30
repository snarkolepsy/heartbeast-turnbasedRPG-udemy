/**********									BATTLE UNIT STATES										**********/

/// @function								init_battle_unit(_name, _level, _is_enemy, _idle_speed, _attack_speed, _hit_speed, _ranged_speed)
/// @param		{real}		_name			Name of the battle unit
/// @param		{real}		_level			Current level of the unit
/// @param		{boolean}	_is_enemy		Is this an enemy unit?
/// @param		{real}		_idle_speed		Idle animation speed
/// @param		{real}		_attack_speed	Melee attack animation speed
/// @param		{real}		_hit_speed		Hit animation speed
/// @param		{real}		_ranged_speed	Ranged attack animation speed
function init_battle_unit(_name, _level, _is_enemy, _idle_speed, _attack_speed, _hit_speed, _ranged_speed) {
	/// @ Description						Sets up the battle unit for the side-by-side battle menu
	///										Different behavior if it's a player or an enemy combatant
	///										Assigns sprite lookup table and corresponsing animation speeds
	
	// Create the battle unit level
	id.level_ = _level;
	
	// Set the stats object
	stats_object_ = id;
	if (!_is_enemy) {
		stats_object_ = o_player_stats; 
	}
	
	// Set up the stats for the enemy
	if (_is_enemy) {
		stats_ = get_stats_from_class(_name);
		draw_health_ = stats_[$ "health"];
	}
	
	// Set the image xscale
	image_xscale = 1-_is_enemy*2;
	
	// Set up enum for states
	enum action {
		idling,
		approaching,
		attacking,
		returning,
		hitting,
		ranging
	}
	
	// Sprite lookup table
	show_debug_message("s_battle_" + _name + "_idle");
	show_debug_message("s_battle_" + _name + "_approach");
	show_debug_message("s_battle_" + _name + "_attack");
	show_debug_message("s_battle_" + _name + "_return");
	show_debug_message($"s_battle_{_name}_hit");
	show_debug_message("s_battle_" + _name + "_ranged");
	
	sprite_[action.idling] = asset_get_index("s_battle_" + _name + "_idle");
	sprite_[action.approaching] = asset_get_index("s_battle_" + _name + "_approach");
	sprite_[action.attacking] = asset_get_index("s_battle_" + _name + "_attack");
	sprite_[action.returning] = asset_get_index("s_battle_" + _name + "_return");
	sprite_[action.hitting] = asset_get_index($"s_battle_{_name}_hit");
	sprite_[action.ranging] = asset_get_index("s_battle_" + _name + "_ranged");
	
	// Animation speed lookup table
	animation_speed_[action.idling] = _idle_speed;
	animation_speed_[action.approaching] = 0;
	animation_speed_[action.attacking] = _attack_speed;
	animation_speed_[action.returning] = 0;
	animation_speed_[action.hitting] = _hit_speed;
	animation_speed_[action.ranging] = _ranged_speed;
	
	// Set the current image speed and sprite
	image_speed = animation_speed_[action.idling];
	sprite_index = sprite_[action.idling];
}