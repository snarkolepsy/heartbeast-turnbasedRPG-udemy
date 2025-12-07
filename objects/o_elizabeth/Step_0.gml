/// @description Handling Movement
var _hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))*spd_;
var _vspd = (keyboard_check(vk_down) - keyboard_check(vk_up))*spd_;
move(_hspd, _vspd);