---@meta

---@class Aura
Aura = {}

---Returns the ID of the Spell that caused this Aura to be applied.
---@return number
function Aura:GetAuraId() end

---Returns the Unit that casted the Spell that caused this Aura to be applied.
---@return Unit
function Aura:GetCaster() end

---Returns the GUID of the Unit that casted the Spell that caused this Aura to be applied.
---@return string
function Aura:GetCasterGUID() end

---Returns the level of the Unit that casted the Spell that caused this Aura to be applied.
---@return number
function Aura:GetCasterLevel() end

---Returns the amount of time left until the Aura expires.
---@return number
function Aura:GetDuration() end

---Returns the amount of time this Aura lasts when applied.
---@return number
function Aura:GetMaxDuration() end

---Returns the Unit that the Aura has been applied to.
---@return Unit
function Aura:GetOwner() end

---Returns the number of times the Aura has "stacked".
---@return number
function Aura:GetStackAmount() end

---Remove this Aura from the Unit it is applied to.
function Aura:Remove() end

---Change the amount of time before the Aura expires.
---@param duration number
function Aura:SetDuration(duration) end

---Change the maximum amount of time before the Aura expires.
---@param duration number
function Aura:SetMaxDuration(duration) end

---Change the amount of times the Aura has "stacked" on the Unit.
---@param amount number
function Aura:SetStackAmount(amount) end

