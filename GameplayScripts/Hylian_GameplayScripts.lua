-----------------------------------------------------------------------------------------
--	FILE:	 Hylian_GameplayScripts.lua
--  decster584 (2017)
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Add Link on era change
-----------------------------------------------------------------------------------------

function EraChanged(playerId, EraId)
	local pPlayer = Players[playerId]
	local playerConfig = PlayerConfigurations[playerId]
	local capitalCity = pPlayer:GetCities():GetCapitalCity()

	if playerConfig:GetCivilizationTypeName() == "CIVILIZATION_HYLIAN" then
		pPlayer:GetUnits():Create(tonumber(GameInfo.Units["UNIT_HERO_OF_TIME"].Index), capitalCity:GetX(), capitalCity:GetY())
	end
end

Events.PlayerEraChanged.Add(EraChanged)