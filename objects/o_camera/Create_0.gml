/// @description Initalize the camera
target_ = o_elizabeth;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = view_wport[0]/width_;
state_ = camera_follow_player_state;