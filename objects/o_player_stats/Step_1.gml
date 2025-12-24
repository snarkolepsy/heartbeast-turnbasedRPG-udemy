/// @description Update the draw health
var _dis = draw_health_ - stats_[$ "health"];
if (_dis > 1) {
	draw_health_ = lerp(draw_health_, stats_[$ "health"], 0.1);
}
else {
	draw_health_ = stats_[$ "health"];
}