SLASH_RABLUEBING01 = "/RABlueBingo"
SLASH_RABLUEBING02 = "/Bingo"


local function MyAddonCommands(msg, editbox)
  -- pattern matching that skips leading whitespace and whitespace between cmd and args
  -- any whitespace at end of args is retained
  local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
   
  if cmd == "add" and args ~= "" then
    print("adding " .. args)
    -- Handle adding of the contents of rest... to something.
  elseif cmd == "remove" and args ~= "" then
    print("removing " .. args)
    -- Handle removing of the contents of rest... to something.   
  else
    -- If not handled above, display some sort of help message
    print("Syntax: /hellow (add|remove) someIdentifier");
  end
end

SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'

SlashCmdList["HELLOWORLD"] = MyAddonCommands   -- add /hiw and /hellow to command list




--"Someone forgets thier Ony neck",
--"Amery is Demonotized"

squareText= {
"Carll dies more than " .. math.random(3,6) .. " times",
"All the hunters FD at the same time",
"Big heals on Angry",
"New record time for completion",
"Someone is in the wrong Discord channel for ZG",
"Someone forgets thier Ony cloak",
"Groodle wins another ZG mount",
"Laun is lagging into the past",
"Repair bot",
"Raiment is drinking something other than wine",
"Ashkandi drops",
"Amery pulls agro and dies",
"Viewing or Shaolin say Oh Please",
"Someone dies to gravity or lava boss",
"Serox reminds us to loot the dogs",
"Someone other than Tinned says they are Tinned",
"Portal Roulette after raid",
"Somone rolls a 1",
"Tanks remove salv",
"DMN trib buffs get dispelled before raid",
"Xorrak is asked if are logs posted yet",
"At least half the raid wipes on a trash pull",
"Someone hits 100 DKP and does not want to spend it",
"Thunderfury is mentioned at least once",
"Someone gets 1 shot without pulling aggro",
"Sunders Sunders Sunders!",
"Random farm animal noises in discord",
"Fora reports someone",
"Link your LOOT!",
"A binding drops",
"Wait, are we raiden?!",
"Raiment is drunk",
"Raiment is drinking wine",
"Full wipe",
"Not a SINGLE death!",
"Healers need mana",
"Braction speaks in Discord",
"DPS reminded not to stand in fire",
"Someone mentions Canada and/or being Canadian",
"Laun is lagging into the future",
"ZG mount drops",
"Someone forgets their Drakefire Talisman",
"Someone needs a summon out of lava",
"Raiment needs a refill",
"Someone is live streaming raid",
"Shaolin blinks",
"That needs to be on the bingo card!",
"Someone threatens to rage quit",
"A corpse is teabagged",
"A corpse is clamslammed",
"Someone bribes Fora to avoid getting reported",
"Jumper cables are used, and they work",
"Someone forgets to repair before raid",
"Carll's death music is played in Discord",
"Someone brings up that they flasked",
"Hot mic in Discord",
"Do we have wipe protection?",
"Someone hearths during raid",
"Someone blames transfers",
"Amery say's he's demonitized"

}

local function randomizeCard()
  --math.randomseed(1000)
  local cardord = ""

  local n = table.getn(squareText)
  local t = {}
  for i = 1, n do
    t[i] = i
    --print(squareText[i])
  end

  for i = 1, 20 do    
    local j = math.random(i,n)
    t[i], t[j] = t[j], t[i]
  end

  for i = 1, n do
    --print(squareText[t[i]])
    cardord = cardord .. "," .. t[i]
  end

  --print(cardord)
end

function randomizeTextArray()
  rta = {}
  --math.randomseed(1000)
  local cardord = ""

  local n = table.getn(squareText)
  local t = {}
  for i = 1, n do
    t[i] = i
    -- print(squareText[i])
  end

  for i = 1, 20 do    
    local j = math.random(i,n)
    t[i], t[j] = t[j], t[i]
  end

  for i = 1, n do
    --print(squareText[t[i]])
    cardord = cardord .. "," .. t[i]
    rta[#rta+1]=squareText[t[i]]
  end

  --print(cardord)
  return rta
end

local function heythere()
  print("heythere")
  print(math.random(1,10))
  print(squareText[math.random(1,10)])
end

SLASH_HEYTHERE1, SLASH_HEYTHERE2 = '/hey', '/heythere'

--SlashCmdList["HEYTHERE"] = heythere   -- add /hiw and /hellow to command list
SlashCmdList["HEYTHERE"] = randomizeCard   -- add /hiw and /hellow to command list
