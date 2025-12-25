/// @description Update the background positions to simulate parallax

// 0. Sky does not shift

// 1. Mountain
layer_x("Mountain", o_camera.x/1.5);
//layer_y("Mountain", o_camera.y/2.75);

// 2. Trees in the background
layer_x("TreesBackground",  o_camera.x/2);

// 3. One tree in the middle
layer_x("TreeMid",  o_camera.x/2.75);

// 4. Grass in the middle also does not shift

// 5. Grass in the front
layer_x("GrassFont",  o_camera.x/3.75);

// 6. Foreground foliage

// 7. Foreground tree silhouette
layer_x("ForegroundTrees",  o_camera.x/7);