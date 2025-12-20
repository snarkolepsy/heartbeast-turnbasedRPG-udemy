/// @description Initialize Player stats
level_ = 1;

// Get the stats from the class
base_class_ = o_data.classes_[$ "elizabeth"]
stats_ = get_stats_from_class("elizabeth");	// o_data.classes_[$ "elizabeth"];

// TEST: set the player health and names to something ridiculous
//stats_[$ "name"] = "Betty";
//stats_[$ "health"] = 1000;

// OP's implementation seems unnecessary --> draw_health_ = stats_[$ "health"];

// Items list
items_ = [];			//ds_list_create();
item_number_ = [];		//ds_list_create();

// Action list for battle
actions_ = [];			//ds_list_create();