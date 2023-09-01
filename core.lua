local function UntrackPerks()
	local perksData = C_PerksActivities.GetTrackedPerksActivities()
	if not perksData then return end
	
	local trackedIDs = perksData.trackedIDs
	if not trackedIDs then return end
	
	for _, activityID in pairs(trackedIDs) do
		C_PerksActivities.RemoveTrackedPerksActivity(activityID)
	end
end

EventRegistry:RegisterFrameEventAndCallback('PLAYER_LOGIN', UntrackPerks)
