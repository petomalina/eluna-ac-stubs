---@meta

---@class Corpse : Object, WorldObject
Corpse = {}

---Returns the time when the Player became a ghost and spawned this Corpse.
function Corpse:GetGhostTime() end

---Returns the GUID of the Player that left the Corpse behind.
---@return number
function Corpse:GetOwnerGUID() end

---Returns the [CorpseType] of a Corpse.
---@return CorpseType
function Corpse:GetType() end

---Sets the "ghost time" to the current time.
function Corpse:ResetGhostTime() end

---Saves the Corpse to the database.
function Corpse:SaveToDB() end

