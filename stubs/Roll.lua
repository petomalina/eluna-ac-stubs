---@meta

---@class Roll
Roll = {}

---Returns the rolled Item's count.
---@param count number
---@return number
function Roll:GetItemCount(count) end

---Returns the rolled Item's GUID.
---@param guid number
---@return number
function Roll:GetItemGUID(guid) end

---Returns the rolled Item's entry.
---@param entry number
---@return number
function Roll:GetItemId(entry) end

---Returns the rolled Item's random property ID.
---@param randomPropId number
---@return number
function Roll:GetItemRandomPropId(randomPropId) end

---Returns the rolled Item's random suffix ID.
---@param randomSuffix number
---@return number
function Roll:GetItemRandomSuffix(randomSuffix) end

---Returns the rolled Item's slot in the loot window.
---@param slot number
---@return number
function Roll:GetItemSlot(slot) end

---Returns the vote type for a Player on this Roll. See Roll:GetPlayerVoteGUIDs to obtain the GUIDs of the Players who rolled.
---@param guid number
---@param vote RollVote
---@return RollVote
function Roll:GetPlayerVote(guid, vote) end

---Returns the GUIDs of the Players who rolled. See Roll:GetPlayerVote to obtain the vote type of a Player.
---@param guids table
---@return table
function Roll:GetPlayerVoteGUIDs(guids) end

---Returns the mask applied to this Roll.
---@param rollMask RollMask
---@return RollMask
function Roll:GetRollVoteMask(rollMask) end

---Returns the total number of players who rolled greed.
---@param playersCount number
---@return number
function Roll:GetTotalGreed(playersCount) end

---Returns the total number of players who rolled need.
---@param playersCount number
---@return number
function Roll:GetTotalNeed(playersCount) end

---Returns the total number of players who passed.
---@param playersCount number
---@return number
function Roll:GetTotalPass(playersCount) end

---Returns the total number of players who rolled.
---@param playersCount number
---@return number
function Roll:GetTotalPlayersRolling(playersCount) end

