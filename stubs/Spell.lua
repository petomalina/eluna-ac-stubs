---@class Spell
local Spell = {}

---Cancels the Spell.
function Spell:Cancel() end

---Finishes the Spell.
function Spell:Finish() end

---Returns the cast time of the Spell.
---@param castTime number
---@return number
function Spell:GetCastTime(castTime) end

---Returns the Unit that casted the Spell.
---@param caster Unit
---@return Unit
function Spell:GetCaster(caster) end

---Returns the target Object of the Spell.
---@param target Object
---@return Object
function Spell:GetTarget(target) end

---Returns true if the Spell is automatically repeating, false otherwise.
---@param isAutoRepeating boolean
---@return boolean
function Spell:IsAutoRepeat(isAutoRepeating) end

---Sets the Spell to automatically repeat.
---@param repeat boolean
function Spell:SetAutoRepeat(repeat) end

---Casts the Spell.
---@param skipCheck boolean
function Spell:Cast(skipCheck) end

---Returns the spell duration of the Spell.
---@param duration number
---@return number
function Spell:GetDuration(duration) end

---Returns the entry ID of the Spell.
---@param entryId number
---@return number
function Spell:GetEntry(entryId) end

---Returns the power cost of the Spell.
---@param powerCost number
---@return number
function Spell:GetPowerCost(powerCost) end

---Returns the reagents needed for the Spell.
---@param reagents table
---@return table
function Spell:GetReagentCost(reagents) end

---Returns the target destination coordinates of the Spell.
---@param x number
---@param y number
---@param z number
---@return number
function Spell:GetTargetDest(x, y, z) end

return Spell
