/// @description Battle transition fade

// Set the blend mode
gpu_set_blendmode(bm_add);

// Draw the orange flash
draw_set_colour(c_orange);
draw_set_alpha(orange_alpha_);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Draw the white fade
draw_set_colour(c_white);
draw_set_alpha(white_alpha_);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Set back to NORMAL
draw_set_colour(c_white);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);