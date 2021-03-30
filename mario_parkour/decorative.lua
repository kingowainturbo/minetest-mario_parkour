minetest.register_node("mario_parkour:green_block", {
	drawtype = "normal",
	description = "mario pipes",
	tiles = {"mario_green_block.png"},
	groups = {choppy = 1}
})

minetest.register_node("mario_parkour:bricks", {
	drawtype = "normal",
	description = " mario bricks",
	tiles = {"bricks.png"},
	groups = {choppy = 1}
})

minetest.register_node("mario_parkour:green_slope", {
	drawtype = "mesh",
	description = "green slope",
	mesh = "slope.obj",
	tiles = {"mario_green_block.png"},
	paramtype2 = "facedir",
	groups = {choppy = 1},
	selection_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
		collision_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		}
})

minetest.register_node("mario_parkour:brick_slope", {
	drawtype = "mesh",
	description = "brick slope",
	mesh = "slope.obj",
	tiles = {"bricks.png"},
	paramtype2 = "facedir",
	groups = {choppy = 1},
		selection_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
		collision_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		}
})	
