--[[
   Called it "the harmonica" for dramatic effect XD

   Since this can be done with any accessory and it will lag the server
   you need to just add a cooldown serverside on the customizer script.

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
