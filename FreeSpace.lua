--- Figure out free space text
-- use custom text if avilable 
-- @return free space text
function FreeSpot()
	local player = GetUnitName("PLAYER")
	--local freeDefault = "FREE SPACE"
	--print(freeSpace[player])
	
	-- if current player has a custom free space text return that string
	-- otherwise return "Free Space"
	if freeSpace[player] == nil then
		return "Free Space"
	else
		return freeSpace[player]
	end
end

freeSpace = {
	Xorrak = "Logs are already posted",
	Raiment = "Raiment's Thicc Space",
	Carll = "I might be dead",
	Fora = "REPORTED!!!",
	Amery = "Demonitized!",
	Luan = "What day is it today?",
	Angrypcp = "Sunder sunder sunder!",
	Tinnedgoods = "something, something, THUNDERFURY!",
	Popout = "123",
	Zendross = "Rejuv CRITS",
	Brath = "Stabby stab stab!",
	Serox = "Mix Master Serox",
	Caoimhe = "Turtle that Tinned",
	Natshariel = "Maul missed!",
	Yoskeha = "Where's your boomchicken?",
	Shpleeple = "She-people!",
	Jumbo = "This guy is HUGE!"
	Mofugga = "mo-FEW-gah",
	Nikmaa = "Fury warr with that phat DPS",
	Groodle = "Don't you have enough mounts?!",
}
