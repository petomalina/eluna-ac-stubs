---@meta

---@class Aura
Aura = {}

---Returns the ID of the Spell that caused this Aura to be applied.
---@param aura_id number
---@return number
function Aura:GetAuraId(aura_id) end

---Returns the Unit that casted the Spell that caused this Aura to be applied.
---@param caster Unit
---@return Unit
function Aura:GetCaster(caster) end

---Returns the GUID of the Unit that casted the Spell that caused this Aura to be applied.
---@param caster_guid string
---@return string
function Aura:GetCasterGUID(caster_guid) end

---Returns the level of the Unit that casted the Spell that caused this Aura to be applied.
---@param caster_level number
---@return number
function Aura:GetCasterLevel(caster_level) end

---Returns the amount of time left until the Aura expires.
---@param duration number
---@return number
function Aura:GetDuration(duration) end

---Returns the amount of time this Aura lasts when applied.
---@param max_duration number
---@return number
function Aura:GetMaxDuration(max_duration) end

---Returns the Unit that the Aura has been applied to.
---@param owner Unit
---@return Unit
function Aura:GetOwner(owner) end

---Returns the number of times the Aura has "stacked".
---@param stack_amount number
---@return number
function Aura:GetStackAmount(stack_amount) end

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

