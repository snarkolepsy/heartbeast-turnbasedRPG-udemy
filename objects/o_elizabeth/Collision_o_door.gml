/// @description Colliding with a door transports player

room_goto(other.room_);
global.player_start_position = other.start_;
persistent = true;	// Why do we toggle persistence?

if (state_ != elizabeth_wait_state) {
	state_ = elizabeth_wait_state;
	var _transition = instance_create_layer(0, 0, "UI", o_fade_transistion)
	_transition.next_room_ = other.room_;
}