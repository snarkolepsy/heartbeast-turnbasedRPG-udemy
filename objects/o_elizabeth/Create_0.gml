/// @description Initalize the Elizabeth object
// Speed of movement
spd_ = 2;
// Animation speed
image_speed = 0;

enum dir { // ORDER MATTERS --> how GMS organizes directions
	right, // get angle by multiply with 90 degrees --> 0
	up,	   // 1 --> 90
	left,  // 2 --> 180
	down   // 3 --> 270 i.e. down in GMS directions
}

facing_ = dir.right; // default facing RIGHT

// Initalize finite state machine
state_ = elizabeth_move_state;

// Sprite lookup table
sprite_[dir.right] = s_elizabeth_right;
sprite_[dir.up] = s_elizabeth_up;
sprite_[dir.left] =	s_elizabeth_left;
sprite_[dir.down] =	s_elizabeth_down;