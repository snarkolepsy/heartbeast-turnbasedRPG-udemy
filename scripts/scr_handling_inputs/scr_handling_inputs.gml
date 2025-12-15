/// @function			get_input()
function get_input() {
	/// @ Description	Creates a bunch of varibles that will be used throughout the input object lifetime
	
	// Movement input
	up_ = keyboard_check(vk_up);
	right_ = keyboard_check(vk_right);
	left_ = keyboard_check(vk_left);
	down_ = keyboard_check(vk_down);
	
	// Menu navigation input
	up_pressed_ = keyboard_check_pressed(vk_up);
	right_pressed_ = keyboard_check_pressed(vk_right);
	left_pressed_ = keyboard_check_pressed(vk_left);
	down_pressed_ = keyboard_check_pressed(vk_down);
	
	// Action and back input
	action_ = keyboard_check_pressed(ord("X"));
	back_ = keyboard_check_pressed(ord("Z"));
}