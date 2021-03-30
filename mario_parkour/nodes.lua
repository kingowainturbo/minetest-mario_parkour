minetest.register_node("mario_parkour:fakeblock", {
	drawtype = "normal",
	description = "walk through block",
	walkable = false,
	physical = false,
	tiles = {"shroom_1616.png"},
	groups = {choppy = 1}
})

minetest.register_node("mario_parkour:sun", {
	description = "sun",
	drawtype = "normal",
	tiles = {"owainmod1_sun.png", "owainmod1_sun.png", "owainmod1_sun.png", "owainmod1_sun.png", "owainmod1_sun.png", "owainmod1_sun.png"},
	groups = {choppy=2},
	walkable = false,
	damage_per_second = 12
})


minetest.register_node("mario_parkour:killblock", {
	drawtype = "normal",
	description = "killer block",
	tiles = {"killblock.png"},
	groups = {choppy = 1,fall_damage_add_percent = 1000}
})


minetest.register_node("mario_parkour:lightblock_1616", {
	drawtype = "normal",
	description = "light block",
	paramtype = "light",
	light_source = 14,
	tiles = {"lightblock_1616.png"},
	groups = {choppy=1},
})


minetest.register_node("mario_parkour:goomba_1616", {
	drawtype = "normal",
	description = "goomba",
	paramtype = "light",
	tiles = {"goomba_1616.png"},
	groups = {choppy = 1,bouncy = 128, fall_damage_add_percent = -60}
})

minetest.register_node("mario_parkour:beanstalk", {
	description = ("Beanstalk"),
	drawtype = "plantlike",
	tiles = {"beanstalk.png"},
	walkable = false,
	climbable = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
})

minetest.register_node("mario_parkour:fallbreaker", {
	drawtype = "normal",
	description = "fallbreaker",
	tiles = {"blueshroom_1616.png"},
	groups = {choppy=1, fall_damage_add_percent= -100}
})

minetest.register_node("mario_parkour:handgrip_red", {
	drawtype = "nodebox",
	groups = {choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1},
				}
	},
	
	collision_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1},
				}
	},
	
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1},
				}
	},
	
	description = "Hand Grip Red",
	tiles = {"mario_parkour_hhred.png"},
	paramtype2 = "wallmounted",
	paramtype = "light",
	walkable = false,
	climbable = true,
	pointable = true
})

minetest.register_node("mario_parkour:handgrip_grn", {
	drawtype = "nodebox",
	groups = {choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1},
				}
	},
	description = "Hand Grip Green",
	tiles = {"mario_parkour_hhgrn.png"},
	paramtype2 = "wallmounted",
	paramtype = "light",
	walkable = false,
	climbable = true,
	pointable = true
})

minetest.register_node("mario_parkour:handgrip_blu", {
	drawtype = "nodebox",
	groups={choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1},
				}
	},
	description = "Hand Grip Blue",
	tiles = {"mario_parkour_hhblu.png"},
	paramtype2 = "wallmounted",
	paramtype = "light",
	walkable = false,
	climbable = true,
	pointable = true
})
