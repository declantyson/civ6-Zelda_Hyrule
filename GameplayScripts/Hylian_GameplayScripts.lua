-----------------------------------------------------------------------------------------
--	FILE:	 Hylian_InGame.lua
--  Gedemon (2017)
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Hide LeaderHead
-----------------------------------------------------------------------------------------

function HideLeaderHead()
	ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):SetHide(true)
end

function OnEnterGame()
	ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):RegisterWhenShown(HideLeaderHead)
end

function FreeHeroOfTime(playerId, EraId)
	local pPlayer = Players[playerId];

	if pPlayer:GetCivilizationType() == "CIVILIZATION_HYLIAN" then
		-- pPlayer:AddFreeUnit(GameInfo.Units["UNIT_PROPHET"].ID, UNITAI_PROPHET)
		pPlayer:GetUnits():Create()
	end
end

Events.PlayerEraChanged.Add(FreeHeroOfTime);
Events.LoadScreenClose.Add(OnEnterGame)