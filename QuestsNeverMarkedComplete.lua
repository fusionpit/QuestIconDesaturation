local _, qid = ...

local questsNeverMarkedComplete = {
    804, -- Sarkoth
    2158, -- Rest and Relaxation
    40, -- A Fishy Peril
    360, -- Return to the Magistrate
    359, -- Forsaken Duties
    5729, -- Hidden Enemies
    5730, -- Hidden Enemies
}

local questIdMap = {}
for _, id in ipairs(questsNeverMarkedComplete) do
    questIdMap[id] = true
end
qid.QuestsNeverMarkedComplete = questIdMap
