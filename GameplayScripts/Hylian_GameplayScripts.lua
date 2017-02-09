-----------------------------------------------------------------------------------------
--	FILE:	 Hylian_GameplayScripts.lua
--  decster584 (2017)
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Add Link on era change
-----------------------------------------------------------------------------------------

function EraChanged(playerId, EraId)
	local pPlayer = Players[playerId]
	local capitalCity = pPlayer:GetCities():GetCapitalCity()

	if pPlayer:GetCivilizationType() == "CIVILIZATION_HYLIAN" then
		-- pPlayer:AddFreeUnit(GameInfo.Units["UNIT_PROPHET"].ID, UNITAI_PROPHET)
		pPlayer:GetUnits():Create(GameInfo.Units["UNIT_HERO_OF_TIME"], capitalCity:GetX(), capitalCity:GetY())
	end
end

Events.PlayerEraChanged.Add(EraChanged)
