---@class Spell
local Spell = {}

---Returns the spell duration of the Spell.
---@param duration number
---@return duration
function Spell:GetDuration(duration) end

---Returns the power cost of the Spell.
---@param powerCost number
---@return powerCost
function Spell:GetPowerCost(powerCost) end

---Sets the Spell to automatically repeat.
---@param repeat boolean
function Spell:SetAutoRepeat(repeat) end

---Casts the Spell.
---@param skipCheck boolean
function Spell:Cast(skipCheck) end

---Returns the Unit that casted the Spell.
---@param caster Unit
---@return caster
function Spell:GetCaster(caster) end

---Returns the cast time of the Spell.
---@param castTime number
---@return castTime
function Spell:GetCastTime(castTime) end

---Returns the entry ID of the Spell.
---@param entryId number
---@return entryId
function Spell:GetEntry(entryId) end

---Returns the reagents needed for the Spell.
---@param reagents table
---@return reagents
function Spell:GetReagentCost(reagents) end

---Returns the target Object of the Spell.
---@param target Object
---@return target
function Spell:GetTarget(target) end

---Returns the target destination coordinates of the Spell.
---@param x number
---@param y number
---@param z number
---@return x, y, z
function Spell:GetTargetDest(x, y, z) end

---Returns true if the Spell is automatically repeating, false otherwise.
---@param isAutoRepeating boolean
---@return isAutoRepeating
function Spell:IsAutoRepeat(isAutoRepeating) end

---Cancels the Spell.
function Spell:Cancel() end

---Finishes the Spell.
function Spell:Finish() end

return Spell
