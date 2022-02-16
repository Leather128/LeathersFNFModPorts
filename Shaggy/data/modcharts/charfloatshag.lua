local window = 0
local a = 0

local start_Rock_Num = 2
local end_Rock_Num = 12

local rock_Stuff = {
	0
}

function start (song)
	window = 240

	for i=start_Rock_Num, end_Rock_Num do
		local actor_Name = "undefinedSprite" .. tostring(i)

		table.insert(rock_Stuff, getActorY(actor_Name))
	end
end

function update(elapsed)
	a = a + (elapsed * 1.5)
	
	setActorPos(-400 + ((math.cos(a) * 2) * window), -2450 + (math.sin(2 * a) * window), "dad")

	for i=start_Rock_Num, end_Rock_Num do
		local actor_Name = "undefinedSprite" .. tostring(i)
		
		setActorPos(getActorX(actor_Name), rock_Stuff[i] + (math.sin(2 * (a + i)) * 80), actor_Name)
	end

	setActorPos(getActorX('boyfriend') - 200, getActorY('boyfriend') + 200, "bf_rock")
	setActorPos(getActorX('girlfriend') - 10, getActorY('girlfriend') + 575, "gf_rock")
end

print("Mod Chart script loaded :)")