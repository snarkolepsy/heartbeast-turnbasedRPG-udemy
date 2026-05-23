/// @description Destroy the battle unit

// If the enemy is defeated, return to the previous room
if (object_index == o_enemy_battle_unit) {
	var _transition = instance_create_layer(0, 0, "UI", o_fade_transistion);
	_transition.next_room_ = o_game.last_room_;
}

// Stop the battle object play and change camera state
o_battle.play_ = false;
o_camera.state_ = battle_camera_idle_state;