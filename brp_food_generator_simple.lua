-- setup vars
food = {
	workspace['SnackMachine']['Selection1']['ClickDetector'],
	workspace['SnackMachine']['Selection2']['ClickDetector'],
	workspace['SnackMachine']['Selection3']['ClickDetector'],
	workspace['SnackMachine']['Selection4']['ClickDetector'], 
	workspace['SnackMachine']['Selection5']['ClickDetector'],
	workspace['SnackMachine']['Selection6']['ClickDetector'],
	workspace['SnackMachine']['Selection7']['ClickDetector'],
	workspace['SnackMachine']['Selection8']['ClickDetector']
}

-- setup players
plrs = game:GetService("Players")
lp = plrs.LocalPlayer

char = lp.Character

humanoid = char.Humanoid
root = char:FindFirstChild("HumanoidRootPart")

function grabtools()
	for _, child in ipairs(workspace:GetChildren()) do
		if char and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end
end

function click(detector)
	if detector then
		fireclickdetector(detector)
	end
end

function run()
	for i,v in pairs(food) do
		click(v)
	end
end

function notif(title, desc, dur)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = title,
		Text = desc,
		Duration = dur,
	})
end

notif("cuh!!", "Script made by k5utils", 3)

if game.PlaceId == 369152986 then
	notif("real", "are you going to feed africa or something?", 3)

	for i=1,10 do
		run()
		wait(2)
	end

	grabtools()
	wait(2.1)
	humanoid:UnequipTools()
else
	notif("Unsupported Game",'This game only works on:',4)
	notif("Unsupported Game",'Bullying: A Roleplay Story',4)
end
