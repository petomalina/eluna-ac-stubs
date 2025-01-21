---@meta

---@class Roll
Roll = {}

---Returns the rolled Item's count.
---@return number
function Roll:GetItemCount() end

---Returns the rolled Item's GUID.
---@return number
function Roll:GetItemGUID() end

---Returns the rolled Item's entry.
---@return number
function Roll:GetItemId() end

---Returns the rolled Item's random property ID.
---@return number
function Roll:GetItemRandomPropId() end

---Returns the rolled Item's random suffix ID.
---@return number
function Roll:GetItemRandomSuffix() end

---Returns the rolled Item's slot in the loot window.
---@return number
function Roll:GetItemSlot() end

---Returns the vote type for a Player on this Roll. See Roll:GetPlayerVoteGUIDs to obtain the GUIDs of the Players who rolled.
---@param guid number
---@return RollVote
function Roll:GetPlayerVote(guid) end

---Returns the GUIDs of the Players who rolled. See Roll:GetPlayerVote to obtain the vote type of a Player.
---@return table
function Roll:GetPlayerVoteGUIDs() end

---Returns the mask applied to this Roll.
---@return RollMask
function Roll:GetRollVoteMask() end

---Returns the total number of players who rolled greed.
---@return number
function Roll:GetTotalGreed() end

---Returns the total number of players who rolled need.
---@return number
function Roll:GetTotalNeed() end

---Returns the total number of players who passed.
---@return number
function Roll:GetTotalPass() end

---Returns the total number of players who rolled.
---@return number
function Roll:GetTotalPlayersRolling() end

