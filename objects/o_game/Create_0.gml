/// @description Initialize the game object
draw_set_colour(c_white);

// Set the GUI layer size
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// Set the default font
#macro FONT_CHARS "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.,!?'-+/:"
global.custom_font = font_add_sprite_ext(s_font, FONT_CHARS, 1, 1);
draw_set_font(global.custom_font);

// We start in r_init, so go into the next room to start the game
room_goto_next();

// At the start of a new game, we spawn at the same location every time
global.player_start_position = i_game_start;