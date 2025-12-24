/// @description Update the stats for death and level up

// Check for DEATH
if (draw_health_ <= 0) {
	// "Spawning location" for when we are dead
	//global.player_start_position = i_game_over;
	room_goto(r_game_over);
	instance_destroy();
}

// Check for level up
if (stats_[$ "experience"] >= stats_[$ "maxexperience"]) {
	// Increase level and update the stats
	level_++;
	stats_[$ "experience"] = stats_[$ "experience"] - stats_[$ "maxexperience"]; // Calculate and add overflow to next progress
	stats_[$ "maxexperience"] = level_*10;
	
	// Recalculate HP
	stats_[$ "health"] = calculate_health(level_, base_class_[$ "health"]);
	stats_[$ "maxhealth"] = stats_[$ "health"];
}