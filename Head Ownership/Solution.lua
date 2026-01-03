
-- Practically the same as the Freeze Exploit.
local Character = "find the character"
local Player = game.Players:GetPlayerFromCharacter(Character)
local headMovement = Character.HeadMovement

headMovement.OnServerEvent:Connect(function(_player, cFrame)
      if Player.UserId == _player.UserId then -- Check to make sure its the real player.
        -- Do head movement logic here, or whatever.
    elseif Player.UserId ~= _player.UserId then -- If its not, we kick them.
         player:Kick("Not the player")
    end
  end)
