/// @description Initalize the camera
// Setting the default camera state, which is following the player
state_ = camera_follow_player_state;
target_ = o_elizabeth;
speed_ = 0.1;
screenshake_ = 0;

// Grabbing the camera and viewport properties of the current room
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
x_scale_ = view_wport[0]/width_;
y_scale_ = view_hport[0]/height_;