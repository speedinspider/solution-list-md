--Solution to this Rocket Hand exploit? Add a value inside the player!

-- (on the serverside script not local):
local rm = game.ReplicatedStorage.FireMissile

game.Players.PlayerAdded:Connect(function(player)
    local newValue = Instance.new("BoolValue")
    newValue.Name = "rockethandcooldown"
    newValue.Value = false
    newValue.Parent = player
end) 

rm.OnServerEvent:Connect(function(plr)
    if plr.rockethandcooldown.Value == false then
        plr.rockethandcooldown.Value = true -- player wont be able to use remote again until value set to false

        -- Put the normal missile functionality here from the OG script that does the missile bullets & VFX
      
        task.wait(3)
        plr.rockethandcooldown.Value = false -- lets player use it again
        end
    end
end)
