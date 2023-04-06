--[[ HELL PRINT MODULE LUA - TONY ROGERIO --]]
local hp = {}

-- Import config file
local config = require("Modules/config")

-- Function to open game
function hp.openGame()
	exec (config.clientLocation)
	wait(C)
	local handle = findwindow ("Talisman Online")
	if handle then
		workwindow (handle[1][1])
		end
end

-- Function to login 
function hp.login()
	left(config.cords.account[1], config.cords.account[2]) 
	for i = 1, 40 do
		send("Backspace")
	end
	wait(M)
	send(account) wait(M)
	send("Tab") wait(M)
	send(password) wait(M)
	send("Enter") wait(SS)
	send("Enter") wait(S)
end

-- Function to select char 1
function hp.selectChar1()
	wait(M)
	kleft(config.cords.char1[1], config.cords.char1[2]) wait(S)
	
	kleft(config.cords.entergame[1], config.cords.entergame[2])
	kleft(config.cords.entergame[1], config.cords.entergame[2]) wait(SSS)
end

-- Function to select char 2
function hp.selectChar2()
	wait(M)
	kleft(config.cords.char2[1], config.cords.char2[2]) wait(S)
	
	kleft(config.cords.entergame[1], config.cords.entergame[2])
	kleft(config.cords.entergame[1], config.cords.entergame[2]) wait(SSS)
end

-- Function to select char 3
function hp.selectChar3()
	wait(M)
	kleft(config.cords.char3[1], config.cords.char3[2]) wait(S)
	
	kleft(config.cords.entergame[1], config.cords.entergame[2])
	kleft(config.cords.entergame[1], config.cords.entergame[2]) wait(SSS)
end

-- Function to do Hell Print quest
function hp.quest()
	kright(config.quest.selectnpc[1], config.quest.selectnpc[2]) wait(M)
	kright(config.quest.talknpc[1], config.quest.talknpc[2]) wait(M)
	
	kleft(config.quest.selectquest[1], config.quest.selectquest[2]) 
	kleft(config.quest.selectquest[1], config.quest.selectquest[2]) wait(M)
	
	kleft(config.quest.acceptquest[1], config.quest.acceptquest[2]) 
	kleft(config.quest.acceptquest[1], config.quest.acceptquest[2]) wait(M)
	
	kleft(config.quest.closequest[1], config.quest.closequest[2]) 
	kleft(config.quest.closequest[1], config.quest.closequest[2]) wait(M)
	
	kright(config.quest.selectnpc[1], config.quest.selectnpc[2]) wait(M)
	kright(config.quest.talknpc[1], config.quest.talknpc[2]) wait(M)
	
	kleft(config.quest.selectquest[1], config.quest.selectquest[2]) 
	kleft(config.quest.selectquest[1], config.quest.selectquest[2]) wait(M)
	
	kleft(config.quest.deliverquest[1], config.quest.deliverquest[2]) 
	kleft(config.quest.deliverquest[1], config.quest.deliverquest[2]) wait(M)
	
	kleft(config.quest.closequest[1], config.quest.closequest[2]) 
	kleft(config.quest.closequest[1], config.quest.closequest[2]) wait(S)
end

-- Function to close window
function hp.terminate()
	terminate (config.winName1)
	terminate (config.winName2)
end

-- Main Function
function hp.start()
	-- Acc XXX, char 1
	if char1 == "yes" then
		::Acc_Char1::
		hp.openGame()
		hp.login()
		hp.selectChar1()
		if color(90, 42) ~= 131244 then
			-- Close client
			hp.terminate()
			goto Acc_Char1
		end	
		send_down(config.hide) wait(M)
		hp.quest()
	
		-- Take a picture of bag items and save
		send("i") wait(M)
		local date_time = os.date("DATE_%Y_%m_%d_HOUR_%H_%M_%S")
		local accountimage = account
		local imgChar1 = getimage(0, 0, 1920, 1080)
		saveimage(imgChar1, "Images/bag/" .. accountimage .. "_Char1_" .. date_time .. ".bmp") wait(M)
	
		-- Close client
		hp.terminate()
	end
	
	
	-- Acc XXX, char 2
	if char2 == "yes" then
		::Acc_Char2::
		hp.openGame()
		hp.login()
		hp.selectChar2()
		if color(90, 42) ~= 131244 then
			-- Close client
			hp.terminate()
			goto Acc_Char2
		end
		send_down(config.hide) wait(M)
		hp.quest()
	
		-- Take a picture of bag items and save
		send("i") wait(M)
		local date_time = os.date("DATE_%Y_%m_%d_HOUR_%H_%M_%S")
		local accountimage = account
		local imgChar2 = getimage(0, 0, 1920, 1080)
		saveimage(imgChar2, "Images/bag/" .. accountimage .. "_Char2_" .. date_time .. ".bmp") wait(M)
	
		-- Close client
		hp.terminate()
	end
	
	-- Acc XXX, char 3
	if char3 == "yes" then
		::Acc_Char3::
		hp.openGame()
		hp.login()
		hp.selectChar3()
		if color(90, 42) ~= 131244 then
			-- Close client
			hp.terminate()
			goto Acc_Char3
		end
		send_down(config.hide) wait(M)
		hp.quest()
	
		-- Take a picture of bag items and save
		send("i") wait(M)
		local date_time = os.date("DATE_%Y_%m_%d_HOUR_%H_%M_%S")
		local accountimage = account
		local imgChar3 = getimage(0, 0, 1920, 1080)
		saveimage(imgChar3, "Images/bag/" .. accountimage .. "_Char3_" .. date_time .. ".bmp") wait(M)
	
		-- Close client
		hp.terminate()
	end
end

return hp
