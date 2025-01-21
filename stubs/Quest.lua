---@class Quest
local Quest = {}

---Returns 'true' if the Quest has the specified flag, false otherwise.
Below flags are based off of 3.3.5a. Subject to change.
---@param flag QuestFlags
---@param hasFlag boolean
---@return hasFlag
function Quest:HasFlag(flag, hasFlag) end

---Returns 'true' if the Quest is a daily quest, false otherwise.
---@param isDaily boolean
---@return isDaily
function Quest:IsDaily(isDaily) end

---Returns the Quest's flags.
---@param flags QuestFlags
---@return flags
function Quest:GetFlags(flags) end

---Returns the minimum level required to pick up the Quest.
---@param minLevel number
---@return minLevel
function Quest:GetMinLevel(minLevel) end

---Returns the next Quest entry ID.
---@param entryId number
---@return entryId
function Quest:GetNextQuestId(entryId) end

---Returns the Quest's type.
---@param type number
---@return type
function Quest:GetType(type) end

---Returns 'true' if the Quest is repeatable, false otherwise.
---@param isRepeatable boolean
---@return isRepeatable
function Quest:IsRepeatable(isRepeatable) end

---Returns entry ID of the Quest.
---@param entryId number
---@return entryId
function Quest:GetId(entryId) end

---Returns the Quest's level.
---@param level number
---@return level
function Quest:GetLevel(level) end

---Returns the next Quest entry ID in the specific Quest chain.
---@param entryId number
---@return entryId
function Quest:GetNextQuestInChain(entryId) end

---Returns the previous Quest entry ID.
---@param entryId number
---@return entryId
function Quest:GetPrevQuestId(entryId) end

return Quest
