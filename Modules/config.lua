--[[ HELL PRINT MODULE LUA - TONY ROGERIO --]]
local config = {}

-- Times to wait 
M = 600 -- M = Time used in quest 
S = 1000 
SS = 2000 -- SS = Time to server select after password
SSS = 3000 -- SSS = Time to enter game after press (Enter Game button)
C = 13000 -- C = Time to open client, 13000 = 13 seconds

-- Hide players
config.hide = "F12"

-- Local Launcher.bat inside game folder
config.clientLocation = ([[C:\Program Files (x86)\TalismanOnline\Launcher.bat]])

-- Name of the game window to close if be "Server busy" or any error on login
config.winName1 = "Talisman Online | Giant Sky Medal | ver.5925" 
config.winName2 = "Talisman Online | ver.5925"

-- Cordinates inside the game
config.cords = {
	account = {}, -- cords of account box, Must be in right corner to erase current login, if is a big login words 
	password = {}, -- Not in use
	char1 = {}, -- cords of char 1 to select
	char2 = {}, -- cords of char 1 to select
	char3 = {}, -- cords of char 1 to select
	entergame = {} -- cords of enter game button
}

-- Quest Hell print cordinates
config.quest = {
	selectnpc = {}, -- cords to select npc
	talknpc = {}, -- cords to talk with npc, can be the same (selectnpc)
	selectquest = {}, -- cords to select quest
	acceptquest = {}, -- cords to accept quest
	closequest = {}, -- cords to close quest
	deliverquest = {} -- cords done quest
}


return config