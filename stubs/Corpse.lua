---@class Corpse : Object, WorldObject
local Corpse = {}

---Returns the GUID of the Player that left the Corpse behind.
---@param ownerGUID number
---@return number
function Corpse:GetOwnerGUID(ownerGUID) end

---Returns the [CorpseType] of a Corpse.
---@param corpseType CorpseType
---@return CorpseType
function Corpse:GetType(corpseType) end

---Sets the "ghost time" to the current time.
function Corpse:ResetGhostTime() end

---Saves the Corpse to the database.
function Corpse:SaveToDB() end

---Returns the time when the Player became a ghost and spawned this Corpse.
---@param ghostTime number
---@return number
function Corpse:GetGhostTime(ghostTime) end

return Corpse
