---@meta

---@class Corpse : Object, WorldObject
Corpse = {}

---Returns the time when the Player became a ghost and spawned this Corpse.
---@return number
function Corpse:GetGhostTime() end

---Returns the GUID of the Player that left the Corpse behind.
---@return number
function Corpse:GetOwnerGUID() end

---@alias CorpseType
---| 0 # CORPSE_BONES
---| 1 # CORPSE_RESURRECTABLE_PVE
---| 2 # CORPSE_RESURRECTABLE_PVP

-- CorpseType
CORPSE_BONES = 0
CORPSE_RESURRECTABLE_PVE = 1
CORPSE_RESURRECTABLE_PVP = 2

---Returns the [CorpseType] of a Corpse.
---@return CorpseType
function Corpse:GetType() end

---Sets the "ghost time" to the current time.
function Corpse:ResetGhostTime() end

---Saves the Corpse to the database.
function Corpse:SaveToDB() end

