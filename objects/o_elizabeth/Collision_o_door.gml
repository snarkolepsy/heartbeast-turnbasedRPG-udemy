/// @description Colliding with the door transports player
room_goto(other.room_);
global.player_start_position = other.start_;
persistent = true;	// Why do we toggle persistence?