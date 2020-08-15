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
	Carll = "I might Be Dead",
	Fora = "REPORTED!!!",
	Amery = "MANA?!?!",
	Luan = "What day is it today?",
	Angrypcp = "SUNDER!",
	Tinnedgoods = "something, something, THUNDERFURY!",
	Popout = "123",
	Zendross = "Rejuv CRITS",
	Brath = "stabby, stab stab!",
	Serox = "Mix Master Serox",
	Caoimhe = "Trutle that Tinned"
}