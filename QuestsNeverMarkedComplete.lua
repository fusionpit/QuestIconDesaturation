local _, qid = ...

local questsNeverMarkedComplete = {
    804, -- Sarkoth
    2158, -- Rest and Relaxation
    40, -- A Fishy Peril
}

local questIdMap = {}
for _, id in ipairs(questsNeverMarkedComplete) do
    questIdMap[id] = true
end
qid.QuestsNeverMarkedComplete = questIdMap
