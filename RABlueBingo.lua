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


squareText= {
"Carll diesmore than 4 times",
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
"Amery removes salv, pulls agro and dies",
"Viewing or Shaolin say Oh Please",
"Someone dies to gravity or lava boss",
"Serox reminds us to loot the dogs",
"Someone other than Tinned says they are TInned",
"Portal Roulette after raid",
"Somone is butthurt they rolled a 1",
"Tanks remove salv",
"DMN trib buffs get dispelled before raid",
"Xorrak is asked are the logs posted yet",
"At least half the raid wipes on a trash pull",
"Someone hits 100 DKP and does not want to spend it",
"Thunderfury is mentioned at least once"
}
