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

---@alias QuestFlags
---| 0 # QUEST_FLAGS_NONE
---| 1 # QUEST_FLAGS_STAY_ALIVE
---| 2 # QUEST_FLAGS_PARTY_ACCEPT
---| 4 # QUEST_FLAGS_EXPLORATION
---| 8 # QUEST_FLAGS_SHARABLE
---| 16 # QUEST_FLAGS_HAS_CONDITION
---| 32 # QUEST_FLAGS_HIDE_REWARD_POI
---| 64 # QUEST_FLAGS_RAID
---| 128 # QUEST_FLAGS_TBC
---| 256 # QUEST_FLAGS_NO_MONEY_FROM_XP
---| 512 # QUEST_FLAGS_HIDDEN_REWARDS
---| 1024 # QUEST_FLAGS_TRACKING
---| 2048 # QUEST_FLAGS_DEPRECATE_REPUTATION
---| 4096 # QUEST_FLAGS_DAILY
---| 8192 # QUEST_FLAGS_FLAGS_PVP
---| 16384 # QUEST_FLAGS_UNAVAILABLE
---| 32768 # QUEST_FLAGS_WEEKLY
---| 65536 # QUEST_FLAGS_AUTOCOMPLETE
---| 131072 # QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER
---| 262144 # QUEST_FLAGS_OBJ_TEXT
---| 524288 # QUEST_FLAGS_AUTO_ACCEPT

-- QuestFlags
QUEST_FLAGS_NONE = 0
QUEST_FLAGS_STAY_ALIVE = 1
QUEST_FLAGS_PARTY_ACCEPT = 2
QUEST_FLAGS_EXPLORATION = 4
QUEST_FLAGS_SHARABLE = 8
QUEST_FLAGS_HAS_CONDITION = 16
QUEST_FLAGS_HIDE_REWARD_POI = 32
QUEST_FLAGS_RAID = 64
QUEST_FLAGS_TBC = 128
QUEST_FLAGS_NO_MONEY_FROM_XP = 256
QUEST_FLAGS_HIDDEN_REWARDS = 512
QUEST_FLAGS_TRACKING = 1024
QUEST_FLAGS_DEPRECATE_REPUTATION = 2048
QUEST_FLAGS_DAILY = 4096
QUEST_FLAGS_FLAGS_PVP = 8192
QUEST_FLAGS_UNAVAILABLE = 16384
QUEST_FLAGS_WEEKLY = 32768
QUEST_FLAGS_AUTOCOMPLETE = 65536
QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER = 131072
QUEST_FLAGS_OBJ_TEXT = 262144
QUEST_FLAGS_AUTO_ACCEPT = 524288

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

