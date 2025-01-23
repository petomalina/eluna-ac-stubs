---@meta

---@class Quest
Quest = {}

---Returns the Quest's flags.
---@return QuestFlags
function Quest:GetFlags() end

---Returns entry ID of the Quest.
---@return number
function Quest:GetId() end

---Returns the Quest's level.
---@return number
function Quest:GetLevel() end

---Returns the minimum level required to pick up the Quest.
---@return number
function Quest:GetMinLevel() end

---Returns the next Quest entry ID.
---@return number
function Quest:GetNextQuestId() end

---Returns the next Quest entry ID in the specific Quest chain.
---@return number
function Quest:GetNextQuestInChain() end

---Returns the previous Quest entry ID.
---@return number
function Quest:GetPrevQuestId() end

---Returns the Quest's type.
---@return number
function Quest:GetType() end

---Returns 'true' if the Quest has the specified flag, false otherwise. Below flags are based off of 3.3.5a. Subject to change.
---@param flag QuestFlags
---@return boolean
function Quest:HasFlag(flag) end

---Returns 'true' if the Quest is a daily quest, false otherwise.
---@return boolean
function Quest:IsDaily() end

---Returns 'true' if the Quest is repeatable, false otherwise.
---@return boolean
function Quest:IsRepeatable() end

