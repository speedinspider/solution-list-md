-- On the server; you must also check if the player is the valid rank like you do on the client.

-- ShowStaffButtons.RemoteEvent.Script
script.Parent.OnServerEvent:Connect(function(player)
    local RANK = player:GetRankInGroup(16524481)
    if RANK >= 6 then
        -- Do the staff tag stuff here from the OG script.
    end
end)
