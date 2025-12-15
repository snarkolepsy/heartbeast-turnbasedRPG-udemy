/// @description Execute current state and update sprite
// Control the state
script_execute(state_);

// Set the depth depending on current position
depth = -y;

// Update the sprite
sprite_index = sprite_[facing_];