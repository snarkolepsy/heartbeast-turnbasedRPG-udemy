/// @description Draw the fade

// Blue fade
gpu_set_blendmode(bm_add); // used to be draw_set_blend_mode in GM 1.4
draw_set_colour(c_blue);
draw_set_alpha(image_alpha/2);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Black fade
gpu_set_blendmode(bm_normal); // used to be draw_set_blend_mode in GM 1.4
draw_set_colour(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Reset back to normal drawing
draw_set_colour(c_white);
draw_set_alpha(1);