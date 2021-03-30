local modpath = minetest.get_modpath("mario_parkour")

mario_parkour = {}

----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
--** SETTINGS **--																												--
																																--
mario_parkour.craftable = true					--true for items to be craftable by players, false for them to be "Admin only"  --
																																--
mario_parkour.reward = "default:diamondblock"	--the reward a player receives for completing your course 						--
																																--
mario_parkour.start = {							--the position to send the player back to on completion of your course			--
							x=	10	, 																							--
							y=	32	, 																							--
							z=	10																								--
					  }																											--
																																--
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

dofile(modpath.."/decorative.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/womp.lua")
dofile(modpath.."/chest.lua")
dofile(modpath.."/tp.lua")

		if mario_parkour.craftable then
			dofile(modpath.."/crafts.lua")
		else return end
