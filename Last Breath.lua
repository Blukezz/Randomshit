local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Last Breath.",
    LoadingTitle = "Last Breath. | The only working fe hub",
    LoadingSubtitle = "by Blukez",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "Last Breath.", -- Create a custom folder for your hub/game
       FileName = "config"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/k8tWQgV9ae", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Hello"
    }
 })

 local Welcome = Window:CreateTab("Welcome", 11433532654)

 local WelcomeSection = Welcome:CreateSection("-- [ Welcome ] --")
 local Note = Welcome:CreateParagraph({
    Title = "", 
    Content = "Hello! Welcome to the only hub that actually still works! Its quite sad that roblox is destroying all fe scripts with rcd. So i made this for the last time you can use fe scripts (Until someone finds a bypass for rcd"
})
 local ReanimateSection = Welcome:CreateSection("-- [ Reanimate ] --")
 local ReanimationNote = Welcome:CreateLabel("Please reanimate before using any scripts it might also take a sec for it to load.")
 local Reanimate = Welcome:CreateButton({
    Name = "Reanimate",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Blukezz/Randomshit/main/unbrella%20fling.lua"),true))()
    end,
 })
 local HatListSection = Welcome:CreateSection("-- [ Hats ] --")
local Hat = Welcome:CreateLabel("Vans Black White Checkerboard Umbrella (Search on yt to find out how to get)")
local Hat1 = Welcome:CreateLabel("Roblox Girl Hair")
local Hat2 = Welcome:CreateLabel("Lavender Updo")
local Hat3 = Welcome:CreateLabel("Brown Hair")
local Hat4 = Welcome:CreateLabel("Red Roblox Cap")
local Hat5 = Welcome:CreateLabel("Chestnut Bun")

 local Scripts = Window:CreateTab("Scripts", 11419703033)

 local NoHatsSection = Scripts:CreateSection("-- [ No Hats Required ] --")
 local Gale = Scripts:CreateButton({
    Name = "Gale",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Gale%20Fighter%20Convert.lua'))()
    end,
 })
 local Ender = Scripts:CreateButton({
    Name = "Ender",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Ender%20Convert.lua'))()
    end,
 })
 local Chill = Scripts:CreateButton({
    Name = "Chill",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Chill%20Convert.lua'))()
    end,
 })
 local KrystalDanceV2 = Scripts:CreateButton({
    Name = "Krystal Dance V2",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Krystal%20Dances%20V2%20Convert.lua'))()
    end,
 })
 local KrystalDanceV1 = Scripts:CreateButton({
    Name = "Krystal Dance V1",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Undertale%20Sans%20Convert.lua'))()
    end,
 })
 local Xester = Scripts:CreateButton({
    Name = "Xester",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Xester%20Convert.lua'))()
    end,
 })
 local Sonic = Scripts:CreateButton({
    Name = "Sonic",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Sonic%20The%20Hedehog%20Convert.lua'))()
    end,
 })
 local Sans = Scripts:CreateButton({
    Name = "Sans",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Undertale%20Sans%20Convert.lua'))()
    end,
 })
 local ServerAdmin = Scripts:CreateButton({
    Name = "Server Admin",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Server%20Admin%20Convert.lua'))()
    end,
 })
 local MagicUnknown = Scripts:CreateButton({
    Name = "Magic Unknown",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Magic%20Unknown%20Convert.lua'))()
    end,
 })
 local NebulaGlitcher = Scripts:CreateButton({
    Name = "Nebula Glitcher",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Nebula%20Star%20Glitcher%20Convert.lua'))()
    end,
 })
 local TheDistorted = Scripts:CreateButton({
    Name = "The Distorted",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/The%20Distorted%20Convert.lua'))()
    end,
 })

 local HatsSection = Scripts:CreateSection("-- [ Hats Required ] --")
 local NepV = Scripts:CreateButton({
    Name = "Neptunion V (Demonic Sword)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Nep%20V.lua'))()
    end,
 })
 local NepVV = Scripts:CreateButton({
    Name = "Neptunion V (Slasher)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Blukezz/Useless-Repo/main/Nep%20V%20Slasher.lua'))()
    end,
 })
 local Abyss Eye = Scripts:CreateButton({
    Name = "Abyss Eye (Demonic Sword)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Reanimation.lua'))()
        wait(.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Scripts/Converted/Abyss%20Eye%20Demonic%20Convert.lua'))()
    end,
 })
