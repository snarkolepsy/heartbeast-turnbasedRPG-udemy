/// @description Initialize Player stats
level_ = 1;

// Get the stats from the class
base_class_ = o_data.classes_[$ "elizabeth"]
stats_ = get_stats_from_class("elizabeth");

// Separate variable for drawing the health in correct increments
draw_health_ = stats_[$ "health"];

// Items list
items_ = [];
item_number_ = [];

// Action list for battle
actions_ = [];