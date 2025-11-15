--Solution to this Rocket Hand exploit? Add a cooldown server-side!

--ex (on the serverside script not local):
local rm = game.ReplicatedStorage.FireMissile
local cd = {}
rm.OnServerEvent:Connect(function(plr)
    if cd[plr] == false then
        cd[plr] = true -- player wont be able to use remote again until table-value set to false
        -- do missle code here
        task.wait(3)
        cd[plr] = false -- lets player use it again
        end
    end
end)
