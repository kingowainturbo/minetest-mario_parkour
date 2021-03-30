readme.txt / readme.md

Minetest mario_parkour by kingowainturbo.

This "mod" extends a Minetest game by adding "Mario" themed parkour blocks.

____________________________________________________________________________________
**SETTINGS**

Clearly laid out in init.lua are 3 settings.
mario_parkour.craftable	-	If this is true, blocks are craftable by players
				-	If false, they have no recipe and are "Admin" blocks
					
mario_parkour.start		-	Sets the return-to pos upon completion of the course
mario_parkour.reward		-	Sets the reward for completing the course

____________________________________________________________________________________

The blocks are:

*DECORATIVE-------------------------------------------------------------------------

Mario Bricks

Mario Brick Slopes

Green Block (Warp Pipe)

Green Slope

*ENTITY-----------------------------------------------------------------------------

Womp

*FUNCTIONAL-------------------------------------------------------------------------

Womp Spawner				  			- Spawns a womp and kills you if you get caught under or close to it.

RGB coloured hand-grips (climbing wall)			- A button like block that allows you to climb up walls.

Bouncy Goomba							- A "trampoline" with reduced fall damage. 

Bitey Plant							- Kills you if you fall on it.

Star Lamp				 			- Light block.

Angry Sun				 			- The sun will kill you if you get too close..

Scalable Beanstalk						- Ladder-like, scalable beanstalk.

Mario Chest							- A chest. A mario chest.

Non-Walkable Mushroom (Ideal for Dropper)			- A block that you can walk / fall through safely.

Fall-Breaker (No Fall Damage) Mushroom		  	- Saves you from falling to your death.

Return to (pos) teleport block				- Looks for a destination block within a 32-block radius and teleports unfortunate players back a stage.

Return to (pos) destination block				- Target for the teleport block.

Exit / Reward Completion block				- Gives players a reward and teleports them to the coordinates defined in init.lua.	 

Lucky Block							- A unique, easy to make block that prevents crafting recipe clashes.

*TO_DO---------------------------------------------------------------------------------

-	Add a tool that would enable physics override. 

-	Add a setting for the teleport scan range.

- 	Hidden block (disguised as bricks) containing "TBD".
