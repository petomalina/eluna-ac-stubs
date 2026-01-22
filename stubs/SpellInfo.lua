---@meta

---@class SpellInfo
SpellInfo = {}

---Returns true if the SpellInfo can be cast while in combat, false otherwise.
---@return boolean
function SpellInfo:CanBeUsedInCombat() end

---Returns true if the SpellInfo can dispel the specified aura SpellInfo, false otherwise.
---@param auraSpellInfo SpellInfo
---@return boolean
function SpellInfo:CanDispelAura(auraSpellInfo) end

---Returns true if the SpellInfo can pierce through an immunity aura defined by the given SpellInfo, false otherwise.
---@param auraSpellInfo SpellInfo
---@return boolean
function SpellInfo:CanPierceImmuneAura(auraSpellInfo) end

---Returns true if the SpellInfo can be explicitly cast on the given [target] with the optional Item.
---@param caster Unit
---@param target WorldObject
---@param item Item
---@return boolean
function SpellInfo:CheckExplicitTarget(caster, target, item) end

---Returns true if the SpellInfo can be cast in the specified location.
---@param map_id number
---@param zone_id number
---@param area_id number
---@param player Player
---@param strict? boolean
---@return boolean
function SpellInfo:CheckLocation(map_id, zone_id, area_id, player, strict) end

---Returns true if the SpellInfo can be cast while in the specified shapeshift form.
---@param form number
---@return boolean
function SpellInfo:CheckShapeshift(form) end

---Returns true if the target is valid for the SpellInfo.
---@param caster Unit
---@param target WorldObject
---@param implicit? boolean
---@return boolean
function SpellInfo:CheckTarget(caster, target, implicit) end

---Returns true if the SpellInfo can affect the Unit based on its creature type.
---@param target Unit
---@return boolean
function SpellInfo:CheckTargetCreatureType(target) end

---Returns a combined mechanic mask of all effects for the SpellInfo.
---@return number
function SpellInfo:GetAllEffectsMechanicMask() end

---Retrieves the attributes of the SpellInfo based on the attribute type.
---@param attributeType int8
---@return number
function SpellInfo:GetAttributes(attributeType) end

---Returns the aura state requirement for the SpellInfo.
---@return number
function SpellInfo:GetAuraState() end

---Retrieves the category of the SpellInfo.
---@return number
function SpellInfo:GetCategory() end

---Returns the dispel mask for the SpellInfo.
---@param type number
---@return number
function SpellInfo:GetDispelMask(type) end

---Returns the mechanic of the specified effect index in the SpellInfo.
---@param effIndex number
---@return number
function SpellInfo:GetEffectMechanic(effIndex) end

---Returns the mechanic mask of a specific effect of the SpellInfo.
---@param effIndex number
---@return number
function SpellInfo:GetEffectMechanicMask(effIndex) end

---Retrieves the MiscValueA of a spell effect at the specified index.
---@param effectIndex number
---@return number
function SpellInfo:GetEffectMiscValueA(effectIndex) end

---Retrieves the MiscValueB of a spell effect at the specified index.
---@param effectIndex number
---@return number
function SpellInfo:GetEffectMiscValueB(effectIndex) end

---Returns the explicit target mask of the SpellInfo.
---@return number
function SpellInfo:GetExplicitTargetMask() end

---Returns the name of the SpellInfo
---@param locale? LocaleConstant
---@return string
function SpellInfo:GetName(locale) end

---Returns the school mask of the SpellInfo.
---@return number
function SpellInfo:GetSchoolMask() end

---Returns the mechanic mask for the SpellInfo based on an effect bitmask.
---@param effectmask number
---@return number
function SpellInfo:GetSpellMechanicMaskByEffectMask(effectmask) end

---Returns the spell specific type of the SpellInfo.
---@return number
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
function SpellInfo:HasAura() end

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

---Returns true if the SpellInfo is affected by spell modifiers (e.g., talents, auras), false otherwise.
---@return boolean
function SpellInfo:IsAffectedBySpellMods() end

---Determines whether the SpellInfo affects an area (AOE - Area of Effect)
---@return boolean
function SpellInfo:IsAffectingArea() end

---Returns true if the SpellInfo allows casting on dead targets, false otherwise.
---@return boolean
function SpellInfo:IsAllowingDeadTarget() end

---Returns true if the SpellInfo is exclusive with the specified SpellInfo per caster, based on aura exclusivity rules.
---@param otherSpellInfo SpellInfo
---@return boolean
function SpellInfo:IsAuraExclusiveBySpecificPerCasterWith(otherSpellInfo) end

---Returns true if the SpellInfo is mutually exclusive with the specified SpellInfo due to specific aura exclusivity rules.
---@param otherSpellInfo SpellInfo
---@return boolean
function SpellInfo:IsAuraExclusiveBySpecificWith(otherSpellInfo) end

---Returns true if the SpellInfo is an auto-repeat ranged spell (e.g., auto-shot), false otherwise.
---@return boolean
function SpellInfo:IsAutoRepeatRangedSpell() end

---Checks if the SpellInfo represents a spell or ability that can be set to autocast.
---@return boolean
function SpellInfo:IsAutocastable() end

---Returns true if the SpellInfo breaks stealth when cast, false otherwise.
---@return boolean
function SpellInfo:IsBreakingStealth() end

---Returns true if the SpellInfo is a channeled spell, false otherwise.
---@return boolean
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

---Returns true if the SpellInfo is considered a positive (beneficial) spell, false otherwise.
---@return boolean
function SpellInfo:IsPositive() end

---Returns true if the specified effect index of the SpellInfo is positive, false otherwise.
---@param effIndex number
---@return boolean
function SpellInfo:IsPositiveEffect(effIndex) end

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

---Returns true if the SpellInfo is a ranged weapon attack (e.g., shoot, throw), false otherwise.
---@return boolean
function SpellInfo:IsRangedWeaponSpell() end

---Returns a boolean indicating whether the SpellInfo requires a dead target
function SpellInfo:IsRequiringDeadTarget() end

---Checks if the SpellInfo represents a self-casting spell or ability.
---@return boolean
function SpellInfo:IsSelfCast() end

---Returns true if the SpellInfo only affects a single target, false if it affects multiple or area targets.
---@return boolean
function SpellInfo:IsSingleTarget() end

---Determines if the SpellInfo represents a spell or ability that stack with different ranks.
---@return boolean
function SpellInfo:IsStackableWithRanks() end

---Determines if the SpellInfo represents a spell or ability that targets an area.
---@return boolean
function SpellInfo:IsTargetingArea() end

---Returns true if the SpellInfo requires combo points to cast, false otherwise.
---@return boolean
function SpellInfo:NeedsComboPoints() end

---Checks if the SpellInfo requires an explicit unit target.
---@return boolean
function SpellInfo:NeedsExplicitUnitTarget() end

---Checks if the SpellInfo requires to be triggered by the caster of another specified SpellInfo.
---@param triggeringSpell SpellInfo
---@return boolean
function SpellInfo:NeedsToBeTriggeredByCaster(triggeringSpell) end

