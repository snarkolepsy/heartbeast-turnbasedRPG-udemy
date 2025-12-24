/// @description Enter a new room and adjust player starting position
if (instance_exists(global.player_start_position)) {
	if (instance_exists(o_elizabeth)) {
		o_elizabeth.persistent = false;	// Why do we toggle persistence?
		
		// Relocate the player to the correct starting position of the new room
		o_elizabeth.x = global.player_start_position.x;
		o_elizabeth.y = global.player_start_position.y;
		// Make sure Player is on the correct layer
		o_elizabeth.layer = layer_get_id("Tokens");
	}
	else { // when the player DOESN'T EXIST
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Tokens", o_elizabeth)
	}
}