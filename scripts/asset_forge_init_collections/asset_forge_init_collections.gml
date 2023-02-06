// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asset_forge_init_collections(){
	if (variable_global_exists("collections"))
	{
		return;
	}
	global.collections = ds_map_create();
	
	
	global.collections[? "soil_modular_terrain_collection"] = ds_map_create();
	global.collections[? "soil_Modular Terrain Beach"] = ds_map_create();
	global.collections[? "soil_Modular Terrain Cliff"] = ds_map_create();
	global.collections[? "soil_Modular Terrain Hilly"] = ds_map_create();
	global.collections[? "soil_Modular Terrain Hilly_Expansion"] = ds_map_create();
	
	#region cliff terrain
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Side_Base"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Side_Mid"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};	
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Side_Top"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Corner_Inner_2x2_Base"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,0]],
		block_walk_pattern	: [[0,0],[0,1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Corner_Inner_2x2_Mid"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,0]],
		block_walk_pattern	: [[0,0],[0,1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Corner_Inner_2x2_Top"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,0]],
		block_walk_pattern	: [[0,0],[0,1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]]],
	};	
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Corner_Outer_1x1_Base"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Corner_Outer_1x1_Top"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	#endregion
	
	#region stairs
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Path_Hill_Sharp_Plain_Center"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Path_Hill_Sharp_Plain_Side"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Path_Hill_Sharp_Steps_Center"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Path_Hill_Sharp_Steps_Side"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	
	
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Path_Steps_Center"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Path_Steps_Center_Top"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Path_Steps_Edge"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Path_Steps_Grass_Edge"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_modular_terrain_collection"][? "Cliff_Terrain_Path_Steps_Grass_Edge_Top"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:1,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	#endregion
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Path_Center"]={
		block_size	  : {w : 1,h:1},
		block_pattern : [[1]],
		block_walk_pattern : [[1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[0,0,0,0]]],
		
	};
	
	global.collections[? "soil_modular_terrain_collection"][? "Hilly_Terrain_Grass_Floor"]={
		block_size	  : {w : 1,h:1},
		block_pattern : [[1]],
		block_walk_pattern : [[1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[0.2,0.2,0.2,0.2]]],
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Grass_Flat"]={
		block_size	  : {w : 1,h:1},
		block_pattern : [[1]],
		block_walk_pattern : [[1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[0.2,0.2,0.2,0.2]]],
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Path_Center"]={
		block_size	  : {w : 1,h:1},
		block_pattern : [[1]],
		block_walk_pattern : [[1]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[0,0,0,0]]],
		
	};
	
	
	
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Corner_Inner_Lg"]={
		block_size	  : {w : 2,h:2},
		block_pattern : [[1,1],[1,1]],
		block_walk_pattern : [[0,0],[0,0]],
		offset_x:1,
		offset_y:0,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
		
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Corner_Inner_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Corner_Outer_Lg"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,0,0],[1,1,0],[1,1,1]],
		block_walk_pattern	: [[0,1,1],[0,0,1],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions	: [[[1,1,1,1],[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Corner_Outer_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Hill_Gentle"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[0],[0],[0],[0]],
		offset_x:0,
		offset_y:3,
		z_positions	: [[[2,2,2,2]],[[2,2,2,2]],[[2,2,2,2]],[[2,2,2,2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Hill_Sharp"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[0],[0]],
		offset_x:0,
		offset_y:1,
		z_positions	: [[[2,2,2,2]],[[2,2,2,2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Straight"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Top_Joined_Hill_Gentle"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[0],[0],[0],[0]],
		offset_x:0,
		offset_y:3,
		z_positions	: [[[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Top_Joined_Hill_Sharp"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[0],[0]],
		offset_x:0,
		offset_y:1,
		z_positions	: [[[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Base_Waterfall"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:1,
		offset_y:1,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Corner_Inner_Lg"]={
		block_size	  : {w : 2,h:2},
		block_pattern : [[1,1],[1,1]],
		block_walk_pattern : [[0,0],[0,0]],
		offset_x:1,
		offset_y:0,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Corner_Inner_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Corner_Outer_Lg"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,0,0],[1,1,0],[1,1,1]],
		block_walk_pattern	: [[0,1,1],[0,0,1],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions	: [[[1,1,1,1],[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Corner_Outer_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Straight"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Mid_Waterfall"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:1,
		offset_y:1,
		z_positions	: [[[1,1,1,1],[1,1,1,1]],[[1,1,1,1],[1,1,1,1]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Corner_Inner_Lg"]={
		block_size	  : {w : 2,h:2},
		block_pattern : [[1,1],[1,1]],
		block_walk_pattern : [[0,1],[0,0]],
		offset_x:1,
		offset_y:0,
		z_positions	: [[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Corner_Inner_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions	: [[[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Corner_Outer_Lg"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,0,0],[1,1,0],[1,1,1]],
		block_walk_pattern	: [[0,1,1],[0,0,1],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions	: [[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]],[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]]],
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Corner_Outer_Sm"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1.2,1.2,1.2,1.2]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Hill_Gentle"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[0],[0],[0],[0]],
		offset_x:0,
		offset_y:3,
		z_positions: [[[2.2,2.2,2.2,2.2]],[[2.2,2.2,2.2,2.2]],[[2.2,2.2,2.2,2.2]],[[2.2,2.2,2.2,2.2]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Hill_Sharp"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[0],[0]],
		offset_x:0,
		offset_y:1,
		z_positions: [[[2.2,2.2,1.7,1.7]],[[1.7,1.7,1.2,1.2]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Straight"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1.2,1.2,1.2,1.2]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Cliff_Top_Waterfall"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:1,
		offset_y:1,
		z_positions: [[[1.2,1.2,1.2,1.2],[1.2,1.2,1.2,1.2]],[[2.2,2.2,2.2,2.2],[1.2,1.2,1.2,1.2]]]
	};
	
	
	global.collections[? "soil_Modular Terrain Cliff"][? "Path_Steps_Center"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
		
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Path_Steps_Edge"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Path_Steps_Grass_Edge"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_Modular Terrain Cliff"][? "Path_Steps_Grass_Edge_Top"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	
	global.collections[? "soil_Modular Terrain Cliff"][? "Prop_Bridge_Rope_End"]={
		block_size			: {w : 2,h:3},
		block_pattern		: [[1,1],[1,1],[1,1]],
		block_walk_pattern	: [[1,1],[1,1],[1,1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[1,1,1,1],[1,1,1,1]],[[1,1,0.5,0.5],[1,1,0.5,0.5]],[[0.5,0.5,0.25,0.25],[0.5,0.5,0.25,0.25]]]
	};	
	global.collections[? "soil_Modular Terrain Cliff"][? "Prop_Bridge_Rope_Middle"]={
		block_size			: {w : 2,h:1},
		block_pattern		: [[1,1]],
		block_walk_pattern	: [[1,1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[0.25,0.25,0.25,0.25],[0.25,0.25,0.25,0.25]]]
	};
	
	#region hilly
	global.collections[? "soil_Modular Terrain Hilly"][? "Path_Hill_Sharp_Center"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Path_Hill_Sharp_Side"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[1,1,0.5,0.5]],[[0.5,0.5,0,0]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Path_Hill_Gentle_Center"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[1],[1],[1],[1]],
		offset_x:0,
		offset_y:0,		
		z_positions : [[[1,1,0.85,0.85]],[[0.85,0.85,0.5,0.5]],[[0.5,0.5,0.15,0.15]],[[0.15,0.15,0,0]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Path_Hill_Gentle_Side"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[1],[1],[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[1.2,1.2,1.05,1.05]],[[1.05,1.05,0.70,0.70]],[[0.70,0.70,0.35,0.35]],[[0.35,0.35,0.2,0.2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Side"]={
		block_size			: {w : 1,h:2},
		block_pattern		: [[1],[1]],
		block_walk_pattern	: [[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[1.2,1.2,0.70,0.70]],[[0.70,0.70,0.2,0.2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Side_Gentle"]={
		block_size			: {w : 1,h:4},
		block_pattern		: [[1],[1],[1],[1]],
		block_walk_pattern	: [[1],[1],[1],[1]],
		offset_x:0,
		offset_y:0,
		z_positions : [[[1.2,1.2,1.05,1.05]],[[1.05,1.05,0.7,0.7]],[[0.7,0.7,0.35,0.35]],[[0.35,0.35,0.2,0.2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Side_Transition_From_Gentle"]={
		block_size			: {w : 2,h:4},
		block_pattern		: [[1,1],[1,1],[1,1],[1,1]],
		block_walk_pattern	: [[1,1],[1,1],[1,1],[1,1]],
		offset_x:1,
		offset_y:0,
		z_positions : [
					[[1.2,1.2,1.05,1.05],[1.2,1.2,1.05,1.2]],
					[[1.05,1.05,0.7,0.95],[1.05,1.2,0.95,1.2]],
					[[0.7,0.95,0.35,0.55], [0.95,1.2,0.55,0.7]],
					[[0.35,0.55,0.2,0.2],[0.55,0.7,0.2,0.2]]
				]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Side_Transition_To_Gentle"]={
		block_size			: {w : 2,h:4},
		block_pattern		: [[1,1],[1,1],[1,1],[1,1]],
		block_walk_pattern	: [[1,1],[1,1],[1,1],[1,1]],
		offset_x:1,
		offset_y:0,
		z_positions :[
			[[1.2,1.2,0.7,0.8],[1.2,1.2,0.8,1.05]],
			[[0.7,0.8,0.2,0.45],[0.8,1.05,0.45,0.7]],
			[[0.2,0.45,0.2,0.35],[0.45,0.70,0.35,0.35]],
			[[0.2,0.35,0.2,0.2],[0.35,0.35,0.2,0.2]],
		]
	};
    global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Corner_Inner_2x2"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:0,
		offset_y:1,
		z_positions :[
			[[1.2,1.2,0.70,1.05],[1.2,1.2,1.05,1.2]],
			[[0.70,1.05,0.2,0.70],[0.95,1.2,0.70,1.2]],
		]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Corner_Outer_2x2"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:1,
		offset_y:0,
		z_positions :[
			[[0.2,0.7,0.2,0.35],[0.70,1.2,0.35,0.70]],
			[[0.2,0.35,0.2,0.2],[0.35,0.7,0.2,0.2]],
		]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Hill_Side_On_Side"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[1,1]],
		block_walk_pattern	: [[0,0],[0,0]],
		offset_x:1,
		offset_y:0,
		z_positions :[
			[[1.2,1.7,0.7,1.2],[1.70,2.2,1.2,1.70]],
			[[0.7,1.2,0.2,0.7] ,[1.2,1.7,0.7,1.2]],
		]
	};
	#endregion
	
	#region brige (hilly)
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Bridge_Log_Middle"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[1]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[0.4,0.4,0.4,0.4]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Bridge_Log_End"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[1]],
		offset_x:0,
		offset_y:0,
		
		z_positions: [[[0.3,0.3,0.1,0.1]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Bridge_Log_End_Edge"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Bridge_Log_Middle_Edge"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	#endregion
	#region fences
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Gate_1"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Gate_2"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Hill_Sharp"]={
		block_size			: {w : 2,h:1},
		block_pattern		: [[1,1]],
		block_walk_pattern	: [[0,0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2],[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Hill_Gentle"]={
		block_size			: {w : 4,h:1},
		block_pattern		: [[1,1,1,1]],
		block_walk_pattern	: [[0,0,0,0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
		
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Boards_1"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Boards_2"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Boards_3"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Boards_4"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Curve_1x1"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Curve_2x2"]={
		block_size			: {w : 2,h:2},
		block_pattern		: [[1,1],[0,1]],
		block_walk_pattern	: [[0,0],[1,0]],
		offset_x:0,
		offset_y:1,
		z_positions: [[[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2]]]
	};	
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Fence_Curve_3x3"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,1,1],[1,0,0],[1,0,0]],
		block_walk_pattern	: [[0,0,0],[0,1,1],[0,1,1]],
		offset_x:0,
		offset_y:2,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
	};
	#endregion
	#region bushe and pines
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Hollow_Trunk"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Stump"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Oak_1"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[3,3,3,3]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Oak_2"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[3,3,3,3]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Oak_3"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[3,3,3,3]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Pine_1"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,1,1],[1,1,1],[1,1,1]],
		block_walk_pattern	: [[0,0,0],[0,0,0],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Pine_2"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,1,1],[1,1,1],[1,1,1]],
		block_walk_pattern	: [[0,0,0],[0,0,0],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Tree_Pine_3"]={
		block_size			: {w : 3,h:3},
		block_pattern		: [[1,1,1],[1,1,1],[1,1,1]],
		block_walk_pattern	: [[0,0,0],[0,0,0],[0,0,0]],
		offset_x:1,
		offset_y:1,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]],[[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
	};
	#endregion
	#region rocks
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Rock_1"]={
		block_size			: {w : 3,h:1},
		block_pattern		: [[1,1,1]],
		block_walk_pattern	: [[0,0,0]],
		offset_x:0,
		offset_y:1,
		z_positions: [[[2,2,2,2],[2,2,2,2],[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Rock_2"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Rock_3"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};	
	global.collections[? "soil_Modular Terrain Hilly"][? "Prop_Rock_4"]={
		block_size			: {w : 1,h:1},
		block_pattern		: [[1]],
		block_walk_pattern	: [[0]],
		offset_x:0,
		offset_y:0,
		z_positions: [[[2,2,2,2]]]
	};
	#endregion
}