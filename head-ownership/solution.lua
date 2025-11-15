-- Practically the same as the Freeze Exploit.
local Character = "find the character"
local Player = game.Players:GetPlayerFromCharacter(Character)
local headMovement = Character.HeadMovement

headMovement.OnServerEvent:Connect(function(_player, cFrame)
      if Player.UserId == _player.UserId then
        -- Do head movement logic here, or whatever.
    elseif Player.UserId ~= _player.UserId then
         player:Kick("Not the player")
    end
  end)
