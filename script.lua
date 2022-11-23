getgenv().NoClip = false
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
UserInputService.InputBegan:Connect(function(Key, GameProcessedEvent)
	if GameProcessedEvent then
		return
	end
	if Key.KeyCode == Enum.KeyCode.Q then
		if getgenv().NoClip then
			getgenv().NoClip = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "NCPlus V1.0",
				Text = "Noclip has been disabled.",
				Duration = 5,
			})
		else
			getgenv().NoClip = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "NCPlus V1.0",
				Text = "Noclip has been enabled.",
				Duration = 5,
			})
		end
	end
end)
RunService.Stepped:Connect(function()
	if getgenv().NoClip then
		local LocalPlayerCharacter = game.Players.LocalPlayer.Character
		LocalPlayerCharacter.Head.CanCollide = false
		LocalPlayerCharacter.LowerTorso.CanCollide = false
		LocalPlayerCharacter.UpperTorso.CanCollide = false
		LocalPlayerCharacter.HumanoidRootPart.CanCollide = false
		if LocalPlayerCharacter:FindFirstChild("Badge") then
			LocalPlayerCharacter.Badge.CanCollide = false
		end
	end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "NCPlus V1.0",
	Text = "Credits to SmhZion!",
	Duration = 5,
})
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "NCPlus V1.0",
	Text = "V1.0 has been loaded successfully!",
	Duration = 5,
})
