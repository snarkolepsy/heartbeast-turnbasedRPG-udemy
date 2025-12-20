/// @description Update the stats for death and level up

// Check for DEATH
if (stats_[$ "health"] <= 0) {
	room_goto(r_game_over);
}

// Check for level up
if (stats_[$ "experience"] >= stats_[$ "maxexperience"]) {
	// Increase level and update the stats
	level_++;
	stats_[$ "experience"] = stats_[$ "experience"] - stats_[$ "maxexperience"];
	stats_[$ "maxexperience"] = level_*10;
	
	// Recalculate HP
	stats_[$ "health"] = calculate_health(level_, base_class_[$ "health"]);
	stats_[$ "maxhealth"] = stats_[$ "health"];
}