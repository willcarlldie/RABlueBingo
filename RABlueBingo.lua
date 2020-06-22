SLASH_RABLUEBINGO1 = "/RABlueBingo"
SLASH_RABLUEBINGO2 = "/Bingo"

local function InitFrame(name, width, height)
	name:SetFrameStrata("MEDIUM")
	name:SetSize(width, height)
	name.texture = name:CreateTexture()
	name.texture:SetAllPoints(name)
	name.text = name:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	local fontPath, fontSize, fontFlags = name.text:GetFont()
	name.text:SetFont(fontPath, 14, "OUTLINE")
	name.text:SetTextColor(1, 1, 1, 1)
	name.text:SetPoint("CENTER", name, "CENTER")	
	name.text:SetWidth(width-10)
	--name.text:SetJustifyH("CENTER")
	--name.text:SetJustifyV("MIDDLE")
	--name.text:SetText("Plz work")
	return name
end

local function BingoBoard()
	
	local board=CreateFrame("Frame", "Bingo Board")
	board:SetFrameStrata("BACKGROUND")
	board:SetSize(550, 550)
	board:SetPoint("CENTER", 0, 0)
	board.texture = board:CreateTexture()
	board.texture:SetAllPoints(board)
	board.texture:SetColorTexture(.1, .1, .1)
	local squareHeight = board:GetHeight()/5
	local squareWidth = board:GetWidth()/5

	local square11 = CreateFrame("Frame", "11", board)
	InitFrame(square11, squareWidth, squareHeight)
	square11.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square11:SetPoint("TOPLEFT", board, "TOPLEFT")
	square11.text:SetText(squareText[math.random(25)])

	local square12 = CreateFrame("Frame", "12", board)
	InitFrame(square12, squareWidth, squareHeight)
	square12.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square12:SetPoint("TOPLEFT", board, "TOPLEFT", squareWidth, 0)
	square12.text:SetText(squareText[math.random(25)])

	local square13 = CreateFrame("Frame", "13", board)
	InitFrame(square13, squareWidth, squareHeight)
	square13.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square13:SetPoint("TOP", board, "TOP")
	square13.text:SetText(squareText[math.random(25)])

	local square14 = CreateFrame("Frame", "14", board)
	InitFrame(square14, squareWidth, squareHeight)
	square14.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square14:SetPoint("TOP", board, "TOP", squareWidth, 0)
	square14.text:SetText(squareText[math.random(25)])

	local square15 = CreateFrame("Frame", "15", board)
	InitFrame(square15, squareWidth, squareHeight)
	square15.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square15:SetPoint("TOPRIGHT", board, "TOPRIGHT")
	square15.text:SetText(squareText[math.random(25)])

	local square21 = CreateFrame("Frame", "21", board)
	InitFrame(square21, squareWidth, squareHeight)
	square21.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square21:SetPoint("LEFT", board, "LEFT", 0, squareHeight)
	square21.text:SetText(squareText[math.random(25)])

	local square22 = CreateFrame("Frame", "22", board)
	InitFrame(square22, squareWidth, squareHeight)
	square22.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square22:SetPoint("LEFT", board, "LEFT", squareWidth, squareHeight)
	square22.text:SetText(squareText[math.random(25)])

	local square23 = CreateFrame("Frame", "23", board)
	InitFrame(square23, squareWidth, squareHeight)
	square23.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square23:SetPoint("CENTER", board, "CENTER", 0, squareHeight)
	square23.text:SetText(squareText[math.random(25)])

	local square24 = CreateFrame("Frame", "24", board)
	InitFrame(square24, squareWidth, squareHeight)
	square24.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square24:SetPoint("CENTER", board, "CENTER", squareWidth, squareHeight)
	square24.text:SetText(squareText[math.random(25)])

	local square25 = CreateFrame("Frame", "25", board)
	InitFrame(square25, squareWidth, squareHeight)
	square25.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square25:SetPoint("RIGHT", board, "RIGHT", 0, squareHeight)
	square25.text:SetText(squareText[math.random(25)])

	local square31 = CreateFrame("Frame", "31", board)
	InitFrame(square31, squareWidth, squareHeight)
	square31.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square31:SetPoint("LEFT", board, "LEFT")
	square31.text:SetText(squareText[math.random(25)])

	local square32 = CreateFrame("Frame", "32", board)
	InitFrame(square32, squareWidth, squareHeight)
	square32.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square32:SetPoint("LEFT", board, "LEFT", squareWidth, 0)
	square32.text:SetText(squareText[math.random(25)])

	local square33 = CreateFrame("Frame", "33", board)
	InitFrame(square33, squareWidth, squareHeight)
	square33.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square33:SetPoint("CENTER", board, "CENTER")	
	local fontPath33, fontSize33, fontFlags33 = square33.text:GetFont()
	square33.text:SetFont(fontPath33, 20, "THICKOUTLINE")
	square33.text:SetText("FREE SPACE")

	local square34 = CreateFrame("Frame", "34", board)
	InitFrame(square34, squareWidth, squareHeight)
	square34.texture:SetColorTexture(0, 1.0, 1.0, 0.2)
	square34:SetPoint("CENTER", board, "CENTER", squareWidth, 0)
	square34.text:SetText(squareText[math.random(25)])

	local square35 = CreateFrame("Frame", "35", board)
	InitFrame(square35, squareWidth, squareHeight)
	square35.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square35:SetPoint("RIGHT", board, "RIGHT")
	square35.text:SetText(squareText[math.random(25)])

	local square41 = CreateFrame("Frame", "41", board)
	InitFrame(square41, squareWidth, squareHeight)
	square41.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square41:SetPoint("LEFT", board, "LEFT", 0, -squareHeight)
	square41.text:SetText(squareText[math.random(25)])

	local square42 = CreateFrame("Frame", "42", board)
	InitFrame(square42, squareWidth, squareHeight)
	square42.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square42:SetPoint("LEFT", board, "LEFT", squareWidth, -squareHeight)
	square42.text:SetText(squareText[math.random(25)])

	local square43 = CreateFrame("Frame", "43", board)
	InitFrame(square43, squareWidth, squareHeight)
	square43.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square43:SetPoint("CENTER", board, "CENTER", 0, -squareHeight)
	square43.text:SetText(squareText[math.random(25)])

	local square44 = CreateFrame("Frame", "44", board)
	InitFrame(square44, squareWidth, squareHeight)
	square44.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square44:SetPoint("CENTER", board, "CENTER", squareWidth, -squareHeight)
	square44.text:SetText(squareText[math.random(25)])

	local square45 = CreateFrame("Frame", "45", board)
	InitFrame(square45, squareWidth, squareHeight)
	square45.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square45:SetPoint("RIGHT", board, "RIGHT", 0, -squareHeight)
	square45.text:SetText(squareText[math.random(25)])

	local square51 = CreateFrame("Frame", "51", board)
	InitFrame(square51, squareWidth, squareHeight)
	square51.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square51:SetPoint("BOTTOMLEFT", board, "BOTTOMLEFT")
	square51.text:SetText(squareText[math.random(25)])

	local square52 = CreateFrame("Frame", "52", board)
	InitFrame(square52, squareWidth, squareHeight)
	square52.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square52:SetPoint("BOTTOMLEFT", board, "BOTTOMLEFT", squareWidth, 0)
	square52.text:SetText(squareText[math.random(25)])

	local square53 = CreateFrame("Frame", "53", board)
	InitFrame(square53, squareWidth, squareHeight)
	square53.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square53:SetPoint("BOTTOM", board, "BOTTOM")
	square53.text:SetText(squareText[math.random(25)])

	local square54 = CreateFrame("Frame", "54", board)
	InitFrame(square54, squareWidth, squareHeight)
	square54.texture: SetColorTexture(0, 1.0, 1.0, 0.2)
	square54:SetPoint("BOTTOM", board, "BOTTOM", squareWidth, 0)
	square54.text:SetText(squareText[math.random(25)])

	local square55 = CreateFrame("Frame", "55", board)
	InitFrame(square55, squareWidth, squareHeight)
	square55.texture: SetColorTexture(1.0, 1.0, 1.0, 0.2)
	square55:SetPoint("BOTTOMRIGHT", board, "BOTTOMRIGHT")
	square55.text:SetText(squareText[math.random(25)])

	board:Show()
	--print("This is where the bingo board lives")
end


local function makeBingoSquare(name, parent, squareWidth, squareHeight, text)
	--local newSquare = CreateFrame("Frame", "11", board)
	newSquare = CreateFrame("Frame", name, parent)
	InitFrame(newSquare, squareWidth, squareHeight)
	newSquare.texture: SetColorTexture(1.0-0.8*math.fmod(name,2), 1.0, 1.0, 0.2)
	newSquare:SetPoint("TOPLEFT", parent, "TOPLEFT", squareWidth*math.fmod(name,5), -squareHeight*math.floor(name/5))
	print(math.fmod(name,5),math.floor(name/5))
	newSquare.text:SetText(text)
	

	return newSquare
end

board = nil

local function BingoBoard2()
	local squareText = randomizeTextArray()
	board=CreateFrame("Frame", "Bingo Board")
	board:SetFrameStrata("BACKGROUND")
	board:SetSize(550, 550)
	board:SetPoint("CENTER", 0, 0)
	board.texture = board:CreateTexture()
	board.texture:SetAllPoints(board)
	board.texture:SetColorTexture(.1, .1, .1)
	local squareHeight = board:GetHeight()/5
	local squareWidth = board:GetWidth()/5

	bingoSquares = {}
	for i = 0,25 do
		bingoSquares[#bingoSquares+1] = makeBingoSquare(i, board, squareWidth, squareHeight, squareText[i+1])
	end
	board:Show()
	tinsert(UISpecialFrames, board:GetName())

	--print("This is where the bingo board lives")
end

SlashCmdList["RABLUEBINGO"] = function(msg) --use /bingo or /RABlueBingo to call up the bingo board
	BingoBoard2();
end