---@meta

---@class SpellInfo
SpellInfo = {}

function SpellInfo:CanBeUsedInCombat() end

function SpellInfo:CanDispelAura() end

function SpellInfo:CanPierceImmuneAura() end

function SpellInfo:CheckExplicitTarget() end

function SpellInfo:CheckLocation() end

function SpellInfo:CheckShapeshift() end

function SpellInfo:CheckTarget() end

function SpellInfo:CheckTargetCreatureType() end

function SpellInfo:GetAllEffectsMechanicMask() end

---Retrieves the attributes of the SpellInfo based on the attribute type.
---@param attributeType int8
---@return number
function SpellInfo:GetAttributes(attributeType) end

function SpellInfo:GetAuraState() end

---Retrieves the category of the SpellInfo.
---@return number
function SpellInfo:GetCategory() end

function SpellInfo:GetDispelMask() end

function SpellInfo:GetEffectMechanic() end

function SpellInfo:GetEffectMechanicMask() end

function SpellInfo:GetExplicitTargetMask() end

---Returns the name of the SpellInfo
---@param locale? LocaleConstant
---@return string
function SpellInfo:GetName(locale) end

function SpellInfo:GetSchoolMask() end

function SpellInfo:GetSpellMechanicMaskByEffectMask() end

function SpellInfo:GetSpellSpecific() end

---Checks if the SpellInfo has an area aura effect.
---@return boolean
function SpellInfo:HasAreaAuraEffect() end

---Checks if the SpellInfo has a specific attribute.
---@param attributeType int8
---@param attribute number
---@return boolean
function SpellInfo:HasAttribute(attributeType, attribute) end

---Checks if the SpellInfo has a specific aura.
---@param aura number
---@return boolean
function SpellInfo:HasAura(aura) end

---Checks if the SpellInfo has a specific effect.
---@param effect uint8
---@return boolean
function SpellInfo:HasEffect(effect) end

---Checks if the SpellInfo represents an ability learned with a profession skill.
---@return boolean
function SpellInfo:IsAbilityLearnedWithProfession() end

---Checks if the SpellInfo represents an ability of a specific skill type.
---@param skillType number
---@return boolean
function SpellInfo:IsAbilityOfSkillType(skillType) end

function SpellInfo:IsAffectedBySpellMods() end

---Determines whether the SpellInfo affects an area (AOE - Area of Effect)
---@return boolean
function SpellInfo:IsAffectingArea() end

function SpellInfo:IsAllowingDeadTarget() end

function SpellInfo:IsAuraExclusiveBySpecificPerCasterWith() end

function SpellInfo:IsAuraExclusiveBySpecificWith() end

function SpellInfo:IsAutoRepeatRangedSpell() end

---Checks if the SpellInfo represents a spell or ability that can be set to autocast.
---@return boolean
function SpellInfo:IsAutocastable() end

function SpellInfo:IsBreakingStealth() end

function SpellInfo:IsChanneled() end

---Returns a boolean indicating whether the cooldown has started on the event associated with the SpellInfo
---@return boolean
function SpellInfo:IsCooldownStartedOnEvent() end

---Returns a boolean indicating whether the death is persistent for the given SpellInfo
---@return boolean
function SpellInfo:IsDeathPersistent() end

---Checks if the SpellInfo is an explicit discovery.
---@return boolean
function SpellInfo:IsExplicitDiscovery() end

---Checks if the SpellInfo is related to loot crafting.
---@return boolean
function SpellInfo:IsLootCrafting() end

---Checks if the SpellInfo represents a multi-slot aura spell or effect.
---@return boolean
function SpellInfo:IsMultiSlotAura() end

---Checks if the SpellInfo represents a passive spell or ability.
---@return boolean
function SpellInfo:IsPassive() end

---Checks if the SpellInfo represents a passive spell or ability that is stackable with different ranks.
---@return boolean
function SpellInfo:IsPassiveStackableWithRanks() end

function SpellInfo:IsPositive() end

function SpellInfo:IsPositiveEffect() end

---Checks if the SpellInfo is related to a primary profession skill.
---@return boolean
function SpellInfo:IsPrimaryProfession() end

---Checks if the SpellInfo represents the first rank of a primary profession skill.
---@return boolean
function SpellInfo:IsPrimaryProfessionFirstRank() end

---Checks if the SpellInfo is related to a profession skill.
---@return boolean
function SpellInfo:IsProfession() end

---Checks if the SpellInfo is related to a Profession skill or Riding skill.
---@return boolean
function SpellInfo:IsProfessionOrRiding() end

function SpellInfo:IsRangedWeaponSpell() end

---Returns a boolean indicating whether the SpellInfo requires a dead target
function SpellInfo:IsRequiringDeadTarget() end

---Checks if the SpellInfo represents a self-casting spell or ability.
---@return boolean
function SpellInfo:IsSelfCast() end

function SpellInfo:IsSingleTarget() end

---Determines if the SpellInfo represents a spell or ability that stack with different ranks.
---@return boolean
function SpellInfo:IsStackableWithRanks() end

---Determines if the SpellInfo represents a spell or ability that targets an area.
---@return boolean
function SpellInfo:IsTargetingArea() end

function SpellInfo:NeedsComboPoints() end

---Checks if the SpellInfo requires an explicit unit target.
---@return boolean
function SpellInfo:NeedsExplicitUnitTarget() end

---Checks if the SpellInfo requires to be triggered by the caster of another specified spell.
---@param The riggeringSpel
---@return boolean
function SpellInfo:NeedsToBeTriggeredByCaster(The) end

