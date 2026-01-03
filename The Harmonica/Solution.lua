--[[
   Called it "the harmonica" for dramatic effect XD

   Since the event can be spammed with any accessory and it will crash/lag the server
   you need to just add a cooldown serverside on the import script.

   (ImportAccessory script)
]]

local Cooldown = false

script.Parent.OnServerEvent:Connect(function(plr, id)
      if Cooldown == false and not id == "33070696" then -- 33070696 is harmonica gear ID.
       Cooldown = true

       -- Add gear importing logic from the OG script.
      
       task.wait(1.5)
       Cooldown = false
    end
  end)
