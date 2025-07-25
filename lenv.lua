repeat wait() until game:IsLoaded()
wait(2)
workspace.FinishPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
wait(1)

game.Players.LocalPlayer.OnTeleport:Connect(function()
	queue_on_teleport(scr)
end)

game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
