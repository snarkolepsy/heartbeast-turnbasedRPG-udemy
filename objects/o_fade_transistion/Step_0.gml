/// @description Control the fading
if (image_alpha != target_image_alpha_) {
	// Approach the target image alpha
	image_alpha = approach(image_alpha, target_image_alpha_, 0.2);
}
else {
	if (image_alpha	== 1) {
		// Go to the next room
		target_image_alpha_ = 0;
		room_goto(next_room_);
	}
	else {
		// Destroy the transition object
		instance_destroy();
	}
}