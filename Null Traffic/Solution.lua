-- Serversided cooldown on the FireNull remote.
local rm = game.ReplicatedStorage.FireNull
local cd = {}
rm.OnServerEvent:Connect(function(plr)
    if cd[plr] == false then
        cd[plr] = true -- player wont be able to use remote again until table-value set to false
        -- do null code here
        task.wait(3)
        cd[plr] = false -- lets player use it again
        end
    end
end)
