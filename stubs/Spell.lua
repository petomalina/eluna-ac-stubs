---@meta

---@class Spell
Spell = {}

---Cancels the Spell.
function Spell:Cancel() end

---Casts the Spell.
---@param skipCheck boolean
function Spell:Cast(skipCheck) end

---Finishes the Spell.
function Spell:Finish() end

---Returns the cast time of the Spell.
---@return number
function Spell:GetCastTime() end

---Returns the Unit that casted the Spell.
---@return Unit
function Spell:GetCaster() end

---Returns the spell duration of the Spell.
---@return number
function Spell:GetDuration() end

---Returns the entry ID of the Spell.
---@return number
function Spell:GetEntry() end

---Returns the power cost of the Spell.
---@return number
function Spell:GetPowerCost() end

---Returns the reagents needed for the Spell.
---@return table
function Spell:GetReagentCost() end

---Returns the target Object of the Spell.
---@return Object
function Spell:GetTarget() end

---Returns the target destination coordinates of the Spell.
---@param x number
---@param y number
---@return number
function Spell:GetTargetDest(x, y) end

---Returns true if the Spell is automatically repeating, false otherwise.
---@return boolean
function Spell:IsAutoRepeat() end

---Sets the Spell to automatically repeat.
---@param rep boolean
function Spell:SetAutoRepeat(rep) end

