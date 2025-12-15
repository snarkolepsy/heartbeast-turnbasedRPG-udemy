function approach(current, target, amount) {
	/*
	    This function can be used to approach a value
	    but not pass the value.
	*/

	current = argument[0]; // Current value
	target = argument[1]; // Target value
	amount = argument[2]; // Amount to approach each step

	// approach the value but don't go over
	if (current < target) {
	    return min(current+amount, target); 
	} else {
	    return max(current-amount, target);
	}
}