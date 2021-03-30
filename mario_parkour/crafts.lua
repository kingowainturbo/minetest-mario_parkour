minetest.register_node("mario_parkour:luckyblock", { 
	drawtype = "normal",
	tiles = {"mario_lucky_block.png"},
	groups = {choppy=2},
	description = "?block",
	})

--------------------------------------------------------

minetest.register_craft({
	type = "cooking",
	output = "mario_parkour:luckyblock",
	recipe = "bucket:bucket_lava"
})

minetest.register_craft({ 
	output = "mario_parkour:destinationblock",
	recipe = {
				{"","",""},
				{"default:mese_crystal_fragment","default:dirt","mario_parkour:luckyblock"},
				{"","",""}
			 }
})

minetest.register_craft({ 
	type = "shapeless",
	output = "mario_parkour:restart_tp",
	recipe = {"default:glass","mario_parkour:luckyblock"}
})	
	
minetest.register_craft({ 
	type = "shapeless",
	output = "mario_parkour:exit_block",
	recipe = {"default:obsidian_glass","mario_parkour:luckyblock"}
})	
	
minetest.register_craft({ 
	type = "shapeless",
	output = "mario_parkour:beanstalk",
	recipe = {"group:leaves","mario_parkour:luckyblock"}
})	

minetest.register_craft({ 
	output = "mario_parkour:sun",
	recipe = { 
				{"","default:torch",""},
				{"default:torch","mario_parkour:luckyblock","default:torch"},
				{"","default:torch",""}
			 }
})	

minetest.register_craft({ 
	output = "mario_parkour:lightblock_1616",
	recipe = {
				{"default:torch","","default:torch"},
				{"","mario_parkour:luckyblock",""},
				{"default:torch","","default:torch"}
			 }           	
})			

minetest.register_craft({ 
	type = "shapeless",
	output = "mario_parkour:mario_chest",
	recipe = {"default:chest"}
})

minetest.register_craft({ 
	output = "mario_parkour:womp_spawner",
	recipe = {     
				{"default:cobble","default:cobble","default:cobble"},
				{"default:cobble","mario_parkour:luckyblock","default:cobble"},
				{"default:cobble","default:cobble","default:cobble"}       
	        }
})

minetest.register_craft({
	type = "shapeless",
	output = "mario_parkour:bricks",
	recipe = {"default:cobble","mario_parkour:luckyblock"}
})	

minetest.register_craft({ 
	output = "mario_parkour:brick_slope 6",
	recipe = {
				{"","","mario_parkour:bricks"},
				{"","mario_parkour:bricks","mario_parkour:bricks"},
				{"mario_parkour:bricks","mario_parkour:bricks","mario_parkour:bricks"},
			}
})

minetest.register_craft({ 
	output = "mario_parkour:green_block",
	recipe = {  
				{"group:leaves","default:cobble","group:leaves"},
				{"default:cobble","mario_parkour:luckyblock","default:cobble"},
				{"group:leaves","default:cobble","group:leaves"}       
	        }
})								

minetest.register_craft({ 
	output = "mario_parkour:green_slope 6",
	recipe = {
				{"","","mario_parkour:green_block"},
				{"","mario_parkour:green_block","mario_parkour:green_block"},
				{"mario_parkour:green_block","mario_parkour:green_block","mario_parkour:green_block"},
			}
})

minetest.register_craft({ 
	type = "shapeless",
	output = "mario_parkour:fallbreaker",
	recipe = {"bucket:bucket_water","mario_parkour:luckyblock"}
})																															

minetest.register_craft({ 
	output = "mario_parkour:killblock",
	recipe = {
				{"bucket:bucket_water","bucket:bucket_water","bucket:bucket_water"},
				{"bucket:bucket_water","mario_parkour:luckyblock","bucket:bucket_water"},
				{"bucket:bucket_water","bucket:bucket_water","bucket:bucket_water"}
			}
})

minetest.register_craft({ 
	output = "mario_parkour:fakeblock",
	recipe = {            
				{"mario_parkour:luckyblock","mario_parkour:luckyblock","mario_parkour:luckyblock"},
				{"mario_parkour:luckyblock","","mario_parkour:luckyblock"},
				{"mario_parkour:luckyblock","mario_parkour:luckyblock","mario_parkour:luckyblock"}       
	        }
})									
									
minetest.register_craft({
	type = "shapeless",
	output = "mario_parkour:handgrip_red 4",
	recipe = {"dye:red","mario_parkour:luckyblock"}
})

minetest.register_craft({
	type = "shapeless",
	output = "mario_parkour:handgrip_grn 4",
	recipe = {"dye:green","mario_parkour:luckyblock"}
})

minetest.register_craft({
	type = "shapeless",
	output = "mario_parkour:handgrip_blu 4",
	recipe = {"dye:blue","mario_parkour:luckyblock"}
})				

minetest.register_craft({
	type = "shapeless",
	output = "mario_parkour:goomba_1616",
	recipe = {"default:dirt","bucket:bucket_water","mario_parkour:luckyblock"}
})		
