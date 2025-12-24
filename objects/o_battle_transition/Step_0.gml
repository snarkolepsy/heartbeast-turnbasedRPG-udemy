/// @description Fade
white_alpha_ = lerp(white_alpha_, target_orange_alpha_, 0.2);
if (orange_alpha_ > target_orange_alpha_) {
	// Fading in slower
	orange_alpha_ = lerp(orange_alpha_, target_orange_alpha_, 0.075);
}
else {
	// Fade out
	orange_alpha_ = lerp(orange_alpha_, target_orange_alpha_, 0.2);
}

// Move into the battle room
if (room != r_battle) {
	if (abs(target_white_alpha_-white_alpha_) <= 0.2) {
		
		// Spawning location for BATTLE SCREEN
		//global.player_start_position = i_battle_start; // do not need to move the sprite
		
		// Change the room to the battle screen
		room_goto(r_battle);
	}
}
else {
	// Already in the room, destory the transition
	if (abs(target_white_alpha_-white_alpha_) <= 0.01) {
		instance_destroy();
	}
}