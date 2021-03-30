local spawn_timer = function (pos)
	local timer = minetest.get_node_timer(pos)

		timer:start(3.2)

end

local on_timer = function (pos)
	local node = minetest.get_node(pos)

	spawn_timer(pos)
	
	local rad1 = minetest.get_objects_inside_radius({x=pos.x, y=pos.y-2, z=pos.z}, 6.0)
	
	for _,obj in pairs(rad1) do

				local name = obj:get_luaentity() and
						obj:get_luaentity().name

				if obj:is_player() then
				
					minetest.add_entity({x=pos.x, y=pos.y-2, z=pos.z}, "mario_parkour:womp")
					
				end
	end
	
end	


minetest.register_node("mario_parkour:womp_spawner", {
	description = "Womp Spawner",
	drawtype = "normal",
	tiles = {"mario_parkour_ghost.png"},
	groups = {choppy=2},
	paramtype2 = "facedir",
	on_timer = on_timer,
	on_construct = spawn_timer,
	
}) 
----------------------------------------------------------------------------------------------
minetest.register_entity("mario_parkour:womp", {
	initial_properties = {
		visual = "cube",
		textures = {"owainmod1_womp.png", "owainmod1_womp.png", "owainmod1_womp.png", "owainmod1_womp.png", "owainmod1_womp.png", "owainmod1_womp.png"},
		physical = true,
		collide_with_objects = true,
		collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		static_save = false,
	},

	on_activate = function(self, staticdata, dtime_s)
		self.object:set_acceleration({x=0, y=-512, z=0})
		self.object:set_armor_groups({immortal=1})
		
		minetest.after(0.25, function()
		
		local pos = self.object:get_pos()
		
		local all_objects = minetest.get_objects_inside_radius(pos, 2.5)

			for _,obj in pairs(all_objects) do

				local name = obj:get_luaentity() and
						obj:get_luaentity().name

				if obj:is_player() then

					obj:punch(self.object, 2, {
						damage_groups = {fleshy = 2}
				}, nil)
				end
			end
			end)
	end,	

	on_step = function(self, dtime, moveresult)
		
		local pos = self.object:get_pos()
		
		local all_objects = minetest.get_objects_inside_radius(pos, 1.5)

			for _,obj in pairs(all_objects) do

				local name = obj:get_luaentity() and
						obj:get_luaentity().name

				if obj:is_player() then

					obj:punch(self.object, 2, {
						damage_groups = {fleshy = 2}
				}, nil)
				end
			end
			
		minetest.after(1.6, function()
			self.object:remove()
			end)
	
	end

})
