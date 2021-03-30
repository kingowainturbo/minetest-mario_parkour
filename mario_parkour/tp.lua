local restart_timer = function (pos)
	local timer = minetest.get_node_timer(pos)

		timer:start(0.25)

end

local on_timer = function (pos)
	local node = minetest.get_node(pos)

	restart_timer(pos)
	
	local rad1 = minetest.get_objects_inside_radius(pos, 0.8)
	
	for _,obj in pairs(rad1) do

				local name = obj:get_luaentity() and
						obj:get_luaentity().name

				if obj:is_player() then

					local looky = minetest.find_node_near(pos, 32, {name = "mario_parkour:destinationblock"}) 
						if looky then
					
						obj:get_pos()
						obj:set_pos(looky)
						end
				end
	end
	
end	


minetest.register_node("mario_parkour:restart_tp", {
	description = "Restart TP", 
	drawtype = "normal",
	tiles = {"redshroom_1616.png"},
	groups = {choppy=2},
	paramtype2 = "facedir",
	walkable = false,
	on_timer = on_timer,
	on_construct = restart_timer,
	
}) 

------------------------------------------------------------------------------------------------------------------

minetest.register_node("mario_parkour:exit_block", {
	description = "Exit Block",
	drawtype = "normal",
	tiles = {"cloud_1616.png"},
	paramtype = "light",
	light_source = 8,
	groups = {choppy=2},
	
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)

		clicker:get_inventory():add_item("main", mario_parkour.reward) 
		clicker:set_pos(mario_parkour.start)
	end,
	
})

minetest.register_node("mario_parkour:destinationblock", {
	description = "TP Destination",
	drawtype = "nodebox",
	node_box = {
	type = "fixed",
	fixed = {
			{-0.5 , -0.5 , -0.5 , 0.5 , -0.4, 0.5},
			}
	},
    tiles = {"mario_parkour_alpha.png"},
	use_texture_alpha = true,
	walkable = false,
	paramtype = "light",
	light_source = 2,
	groups = {choppy=1}
})
